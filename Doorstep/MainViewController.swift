//
//  MainViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/30/21.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let home : HomeViewController = HomeViewController()
        let profile :ProfileViewController = ProfileViewController()
        let booking :BookingViewController = BookingViewController()
        let history :HistoryViewController = HistoryViewController()

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [home,history , booking,profile]
        
        tabBarController.selectedViewController = home

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
