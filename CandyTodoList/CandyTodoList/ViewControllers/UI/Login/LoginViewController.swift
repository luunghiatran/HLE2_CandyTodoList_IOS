//
//  LoginViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/28/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    class func create() -> LoginViewController {
         return LoginViewController(nibName: "LoginViewController", bundle: nil) as LoginViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    func initView() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

//=== IBAction ===
extension LoginViewController {
    @IBAction func loginTouch(_ sender: Any) {
//        let controller = HomeViewController.create()
//        let navigation = UINavigationController(rootViewController: controller)
//        self.present(navigation, animated: true, completion: nil)
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.setupHomeScreen()
    }
    
    @IBAction func registerTouch(_ sender: Any) {
        let controller = RegisterViewController.create()
        let navigation = UINavigationController(rootViewController: controller)
        self.present(navigation, animated: true, completion: nil)
    }
}
