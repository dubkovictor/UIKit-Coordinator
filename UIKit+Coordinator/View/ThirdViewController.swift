//
//  ThirdViewController.swift
//  MVVM+Coordinator
//
//  Created by Victor on 27.02.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    
    @IBAction func goNext(_ sender: Any) {
        coordinator?.openSecondVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
