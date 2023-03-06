//
//  AppCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController : UINavigationController 
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = AppStoryboard.firstViewController.viewController(vc: FirstViewController.self)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openSecondVC() {
        let vc = AppStoryboard.secondViewController.viewController(vc: SecondViewController.self)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openThirdVC() {
        let vc = AppStoryboard.thirdViewController.viewController(vc: ThirdViewController.self)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
