//
//  ViewController.swift
//  PatternAdapter
//
//  Created by Kaiserdem on 18.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var authService: AuthenticationService = GoogleAuthenticatorAdapter()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    createUser(email: "user@example.com", password: "3432nvkv8")
  }

  func createUser(email: String, password: String){
    authService.login(email: email, password: password, success: { (user, token) in
      print("Auth succeded: \(user.email), \(token.value)")
    }) { (error) in
      if let error = error {
        print(error.localizedDescription)
      }
    }
  }
}

