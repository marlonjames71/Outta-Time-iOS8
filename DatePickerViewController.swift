//
//  DatePickerViewController.swift
//  Outta-Time
//
//  Created by Marlon Raskin on 7/24/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

#warning("Complete this function!")
protocol DatePickerViewControllerDelegate {
	func something(yep: String)
}

class DatePickerViewController: UIViewController {

	let layer = CAGradientLayer()

	@IBOutlet weak var datePicker: UIDatePicker!


	override func viewDidLoad() {
        super.viewDidLoad()

		datePicker.setValue(UIColor(red: 0.31, green: 0.37, blue: 0.42, alpha: 1), forKey: "textColor")
		
		layer.frame = view.bounds
		layer.colors = [UIColor.black.cgColor, UIColor(red: 0.11, green: 0.13, blue: 0.13, alpha: 1).cgColor]
		view.layer.insertSublayer(layer, at: 0)
    }

}
