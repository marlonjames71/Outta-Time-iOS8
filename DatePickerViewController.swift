//
//  DatePickerViewController.swift
//  Outta-Time
//
//  Created by Marlon Raskin on 7/24/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

protocol DatePickerDelegate: AnyObject {
	func destinationDateWasChosen(date: Date)
}

class DatePickerViewController: UIViewController {

	let layer = CAGradientLayer()

	weak var delegate: DatePickerDelegate?

	@IBOutlet weak var datePicker: UIDatePicker!
	@IBOutlet weak var cancelButton: UIButton!
	@IBOutlet weak var setDateButton: UIButton!


	override func viewDidLoad() {
        super.viewDidLoad()

		cancelButton.layer.borderWidth = 1
		cancelButton.layer.borderColor = #colorLiteral(red: 0.479860858, green: 0.51219596, blue: 0.584455819, alpha: 1)
		cancelButton.layer.cornerRadius = 8
		setDateButton.layer.borderWidth = 1
		setDateButton.layer.borderColor = #colorLiteral(red: 0.479860858, green: 0.51219596, blue: 0.584455819, alpha: 1)
		setDateButton.layer.cornerRadius = 8

		datePicker.setValue(UIColor(red: 0.31, green: 0.37, blue: 0.42, alpha: 1), forKey: "textColor")
		
		layer.frame = view.bounds
		layer.colors = [UIColor.black.cgColor, UIColor(red: 0.11, green: 0.13, blue: 0.13, alpha: 1).cgColor]
		view.layer.insertSublayer(layer, at: 0)
    }

	@IBAction func cancelTapped(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}

	@IBAction func setDateTapped(_ sender: UIButton) {
		delegate?.destinationDateWasChosen(date: datePicker.date)
		dismiss(animated: true, completion: nil)
	}
}


