//
//  ViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var registerView: UIView!
    
    @IBOutlet weak var loginView: UIView!
    
    
    
    @IBAction func indexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex
            {
        
            case 0:
                loginView.isHidden = false
                registerView.isHidden = true
            case 1:
                registerView.isHidden = false
                loginView.isHidden = true
            default:
                break
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        registerView.isHidden=true
        loginView.isHidden=false
    }

    

}

