//
//  ViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var registerView: UIView!
    
    @IBAction func indexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex
            {
        
//            case 0:
//                textLabel.text = "First Segment Selected"
//            case 1:
//                textLabel.text = "Second Segment Selected"
            default:
                break
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

