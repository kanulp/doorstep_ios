//
//  ReviewViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/30/21.
//

import UIKit
import Firebase

class ReviewViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitReview(_ sender: Any) {
        
        let db = Firestore.firestore()
        
        var ref: DocumentReference? = nil
        ref = db.collection("reviews").addDocument(data: [
            "review": "review",
            "title": "Title",
            "user": "karangajjar.lp@gmail.com"
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
                let thanks = storyboard?.instantiateViewController(withIdentifier: "ThankYouViewController") as! ThankYouViewController
                self.navigationController?.pushViewController(thanks, animated: true)
            }
        }
        
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
