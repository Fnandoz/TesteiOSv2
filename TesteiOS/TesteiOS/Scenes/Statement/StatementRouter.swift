//
//  StatementRouter.swift
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

@objc protocol StatementRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol StatementDataPassing
{
  var dataStore: StatementDataStore? { get }
}

class StatementRouter: NSObject, StatementRoutingLogic, StatementDataPassing
{
  weak var viewController: StatementViewController?
  var dataStore: StatementDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: StatementViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: StatementDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
