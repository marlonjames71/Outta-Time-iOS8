//
//  ViewController.swift
//  Outta-Time
//
//  Created by Marlon Raskin on 7/24/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

	let layer = CAGradientLayer()
	var currentSpeed: Int = 0
	var timer = Timer()
	var datePickerVC = DatePickerViewController()

	var dateFormatter: DateFormatter {
		let formatter = DateFormatter()
		formatter.dateFormat = "MMM dd yyyy"
		return formatter
	}
	@IBOutlet weak var destinationTimeLabel: UILabel!
	@IBOutlet weak var presentTimeLabel: UILabel!
	@IBOutlet weak var lastTimeDepartedLabel: UILabel!
	@IBOutlet weak var speedLabel: UILabel!
	@IBOutlet weak var travelBackButton: UIButton!
	@IBOutlet weak var setDestinationTimeButton: UIButton!


	override func viewDidLoad() {
		super.viewDidLoad()

		travelBackButton.layer.borderWidth = 1
		travelBackButton.layer.borderColor = #colorLiteral(red: 0.479860858, green: 0.51219596, blue: 0.584455819, alpha: 1)
		travelBackButton.layer.cornerRadius = 8
		setDestinationTimeButton.layer.borderWidth = 1
		setDestinationTimeButton.layer.borderColor = #colorLiteral(red: 0.479860858, green: 0.51219596, blue: 0.584455819, alpha: 1)
		setDestinationTimeButton.layer.cornerRadius = 8

		layer.frame = view.bounds
		layer.colors = [UIColor.black.cgColor, UIColor(red: 0.11, green: 0.13, blue: 0.13, alpha: 1).cgColor]
		view.layer.insertSublayer(layer, at: 0)

		presentTimeLabel.text = dateFormatter.string(from: Date())
	}

	func startTimer() {
		timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: updateSpeed(timer:))
	}

	func resetTimer() {
		timer.invalidate()
	}

	func updateSpeed(timer: Timer) {
		if currentSpeed < 88 {
			currentSpeed += 1
			speedLabel.text = "\(currentSpeed) MPH"
		} else {
			speedLabel.text = "\(currentSpeed) MPH"
			currentSpeed = 0
			lastTimeDepartedLabel.text = presentTimeLabel.text
			presentTimeLabel.text = destinationTimeLabel.text
			resetTimer()
		}
	}

	@IBAction func travelBackButton(_ sender: UIButton) {
		startTimer()
	}
}

extension TimeCircuitsViewController: DatePickerDelegate {
	func destinationDateWasChosen(date: Date) {
		destinationTimeLabel.text = dateFormatter.string(from: date)
	}


}
