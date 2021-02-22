//
//  ViewController.swift
//  alertBoxesDemo
//
//  Created by IPHTECH 20 on 16/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func simpleAlertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sign Out", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {_ in}))
        alert.addAction(UIAlertAction(title: "Sign Out", style: UIAlertAction.Style.default, handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func SimpelActSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sign Out", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "Approve", style: UIAlertAction.Style.default, handler: {_ in
            print("User Clicked Approve buuton")
        }))
        alert.addAction(UIAlertAction(title: "Edit", style: UIAlertAction.Style.default, handler: {_ in
            print("User Clicked Edit Button")
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: UIAlertAction.Style.default, handler: {_ in
            print("User Clicked Delete Button")
        }))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
            print("User Clicked Dismiss Button")
        }))
        self.present(alert, animated: true, completion: {
            print("Comleted Block")
        })
    }
    
    @IBAction func AlertDestructiveButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
                //Cancel Action
            }))
            alert.addAction(UIAlertAction(title: "Sign out",
                                          style: UIAlertAction.Style.destructive,
                                          handler: {(_: UIAlertAction!) in
                                            //Sign out action
            }))
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alertMoreThen2Button(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: { (_) in
            print("You've pressed default")
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            print("You've pressed cancel")
        }))

        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (_) in
            print("You've pressed the destructive")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alertWithTextField(_ sender: UIButton) {
        let alert = UIAlertController(title: "Add New Tag", message: nil, preferredStyle: UIAlertController.Style.alert)
        alert.addTextField {
            (textField) in textField.placeholder = "Enter Tag Here"
        }
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {_ in
             if let txtField = alert.textFields?.first, let text = txtField.text {
                           print("Text==>" + text)
                       }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: {(_) in
        }))
        self.present(alert, animated: true, completion: nil)
}
}
