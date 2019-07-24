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

	override func viewDidLoad() {
		super.viewDidLoad()

		layer.frame = view.bounds
		layer.colors = [UIColor.black.cgColor, UIColor(red: 0.11, green: 0.13, blue: 0.13, alpha: 1).cgColor]
		view.layer.insertSublayer(layer, at: 0)
	}


}

