//
//  StatementInteractor.swift
//  TesteiOS
//
//  Created by Fernando Gomes on 15/06/19.
//  Copyright (c) 2019 Fernando Gomes. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol StatementBusinessLogic
{
//  func doSomething(request: Statements.get.Request)
    func updateStatementList()
}

protocol StatementDataStore
{
  //var name: String { get set }
}

class StatementInteractor: StatementBusinessLogic, StatementDataStore {
    var presenter: StatementPresentationLogic?
    var worker: StatementWorker?
    var userRepository: UserRepository?
    
    func updateStatementList() {
        worker = StatementWorker()
        userRepository?.getUser { user in
            let request = Statements.get.Request(userAccount: user)
            self.worker?.getStatments(request: request) {
                response in
                let response = Statements.get.Response(userAccount: user, statements: response?.statements)
                self.presenter?.presentUpdateStatmentsList(response: response)
            }
            
        }
        
    }
}
