//
//  SignUpViewController.swift
//  Part-of-Space
//
//  Created by andy on 7/24/21.
//

import UIKit

class SignUpViewController: UIViewController {

	@IBOutlet weak var usernameTextField: UITextField!
	
	@IBOutlet weak var emailTextField: UITextField!
	
	@IBOutlet weak var passwordTextField: UITextField!
	
	@IBOutlet weak var confirmedPasswordTextField: UITextField!
	
	@IBOutlet weak var signUpButton: UIButton!
	
	@IBOutlet weak var errorLabel: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		setUpElement()
    }
	
	func setUpElement() {
		
		// hide error label on init
		errorLabel.alpha = 0
		
		// style the elements
		Utilities.styleTextField(usernameTextField)
		Utilities.styleTextField(emailTextField)
		Utilities.styleTextField(passwordTextField)
		Utilities.styleTextField(confirmedPasswordTextField)
		Utilities.styleFilledButton(signUpButton)
	}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
	@IBAction func signUpTapped(_ sender: Any) {
	}
	
}
