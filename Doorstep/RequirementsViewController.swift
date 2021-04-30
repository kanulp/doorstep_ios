//
//  RequirementsViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/30/21.
//

import UIKit

class RequirementsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextBtn(_ sender: Any) {
        let date = storyboard?.instantiateViewController(withIdentifier: "DateViewController") as! DateViewController
        self.navigationController?.pushViewController(date, animated: true)
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
