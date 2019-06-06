//
//  RegisterViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/29/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

//=== IBAction ===
extension RegisterViewController {
    @IBAction func loginTouch(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

// === static ===
extension RegisterViewController {
    static func create() -> RegisterViewController {
        return RegisterViewController(nibName: "RegisterViewController", bundle: nil) as RegisterViewController
    }
}

//=== private ===
extension RegisterViewController {
    
    func setupUI() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
