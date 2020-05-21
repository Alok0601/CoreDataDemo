//
//  ListViewController.swift
//  CoreDataDemo
//
//  Created by icluster2 on 21/05/20.
//  Copyright © 2020 DSMax. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var studentDetail_table: UITableView!
    
    var student = [Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.studentDetail_table.delegate = self
        self.studentDetail_table.dataSource = self
        self.title = "Students Details"
        student = DatabaseHelper.sharedInstance.getStudentData()
        
    }
    
}
