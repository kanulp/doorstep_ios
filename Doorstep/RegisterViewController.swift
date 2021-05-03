//
//  RegisterViewController.swift
//  Doorstep
//
//  Created by Karan Gajjar on 4/30/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var fullName: UITextField!
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerBtn(_ sender: Any) {
        
        let db = Firestore.firestore()
        
        var ref: DocumentReference? = nil
        ref = db.collection("Users").addDocument(data: [
            "name": "\(fullName.text ?? "name")",
            "username": "\(username.text ?? "username")",
            "email": "\(email.text ?? "email")",
            "phone": "\(phone.text ?? "phone")",
            "password": "\(password.text ?? "pass")"
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
                let otpViewController = self.storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
                self.navigationController?.pushViewController(otpViewController, animated: true)

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
