//
//  ViewController.swift
//  SignUpForm_iOS
//
//  Created by hoya kim on 09/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var emailTextField: UITextField!
	@IBOutlet weak var pwdTextField: UITextField!
	@IBOutlet weak var telTextField: UITextField!
	@IBOutlet weak var blogTextField: UITextField!
	@IBOutlet weak var outputTextView: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		self.view.endEditing(true)
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}

	@IBAction func signupAction(_ sender: Any) {
		outputTextView.text = "Welcome to \(nameTextField.text!) !"
	}
}
