//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by icluster2 on 20/05/20.
//  Copyright © 2020 DSMax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    
    @IBOutlet weak var name_txtFild: UITextField!
    @IBOutlet weak var Address_txtField: UITextField!
    @IBOutlet weak var city_txtField: UITextField!
    @IBOutlet weak var mobile_txtField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //MARK- Action
    
    @IBAction func submitBtnTap(_ sender: Any) {
        
        DatabaseHelper.sharedInstance.save(Object: ["name" : self.name_txtFild.text!,"address": self.Address_txtField.text!,"city":self.city_txtField.text!,"mobile": self.mobile_txtField.text!])
        
        
    }
    
    @IBAction func showBtnTap(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "ListViewController") as! ListViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}

