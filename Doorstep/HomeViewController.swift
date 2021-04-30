//
//  HomeViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/30/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
  
    @IBOutlet weak var tableView: UITableView!
    
    let cellReuseIdentifier = "cell"
    var list :[String] = ["Office Cleaning","Car Clean","Gardening","Snow Remove","Grass Cut"]

    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
            
    }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableViewCell
        
        cell.textService.text  = list[indexPath.row] as String
            
            return cell
        }
        // method to run when table view cell is tapped
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                 print("You tapped cell number \(indexPath.row).")
                
                

                let requirements = storyboard?.instantiateViewController(identifier: "RequirementsViewController") as? RequirementsViewController
                
                self.navigationController?.pushViewController(requirements!, animated: true)
                
                
             }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0;//Choose your custom row height
    }
}

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var textService: UILabel!
    
}
