//
//  ViewController.swift
//  google
//
//  Created by rajanOS on 27/01/22.
//

import UIKit
import GoogleSignIn

//733723786364-2ud1lln8odboi71gjdfnnuj16e9uk80c.apps.googleusercontent.com
class ViewController: UIViewController {
    
    let signInConfig = GIDConfiguration.init(clientID: "733723786364-tlt0sai2fe5b788bnflkn7o31da257e5.apps.googleusercontent.com")
    
    @IBOutlet weak var gds: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func Googl(_ sender: Any) {
     //   GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
           guard error == nil else { return }

           // If sign in succeeded, display the app's main content View.
         }
        
    }
    
    
}


