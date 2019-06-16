//
//  LoginRouter.swift
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

@objc protocol LoginRoutingLogic
{
  func goToStatement()
}

protocol LoginDataPassing
{
  var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing {
    
    weak var viewController: LoginViewController?
    var dataStore: LoginDataStore?
    let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
    
    func goToStatement() {
        let statementVC  =  mainStoryBoard.instantiateViewController(withIdentifier: "statementsVC") as! StatementViewController
        viewController?.present(statementVC, animated: true, completion: nil)
    }

}
