//
//  ViewController.swift
//  Part-of-Space
//
//  Created by andy on 7/23/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {

	@IBOutlet weak var signUpButton: UIButton!
	
	@IBOutlet weak var loginButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		setUpElement()
		
	}
	
	func setUpElement() {
		Utilities.styleFilledButton(signUpButton)
		Utilities.styleHollowButton(loginButton)
	}


}

