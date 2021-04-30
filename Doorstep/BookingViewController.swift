//
//  BookingViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/30/21.
//

import UIKit

class BookingViewController:UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var list :[String] = ["Hello","Hi"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return list.count
   }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           
       let cell = tableView.dequeueReusableCell(withIdentifier: "bookingCell") as! BookingCustomCell
       
      // cell.service.text  = list[indexPath.row] as String
           
           return cell
       }
       // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print("You tapped cell number \(indexPath.row).")
               
               

               let requirements = storyboard?.instantiateViewController(identifier: "RequirementsViewController") as? RequirementsViewController

               self.navigationController?.pushViewController(requirements!, animated: true)
               
               
            }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0;//Choose your custom row height
    }

}

class BookingCustomCell: UITableViewCell {
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var status: UILabel!
}
