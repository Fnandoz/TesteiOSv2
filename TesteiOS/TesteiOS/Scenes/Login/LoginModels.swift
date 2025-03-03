//
//  LoginModels.swift
//  TesteiOS
//
//  Created by Fernando Gomes on 14/06/19.
//  Copyright (c) 2019 Fernando Gomes. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Login
{
  enum doLogin
  {
    struct Request
    {
        var user: String
        var password: String
    }
    struct Response
    {
        var userAccount: UserAccount?
        var error: [String: String]?
    }
    struct ViewModel
    {
    }
  }
}
