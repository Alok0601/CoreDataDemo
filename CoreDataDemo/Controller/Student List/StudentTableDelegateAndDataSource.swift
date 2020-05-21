//
//  StudentTableDelegateAndDataSource.swift
//  CoreDataDemo
//
//  Created by icluster2 on 21/05/20.
//  Copyright © 2020 DSMax. All rights reserved.
//

import Foundation
import UIKit

extension ListViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.studentDetail_table.dequeueReusableCell(withIdentifier: "StudentTableViewCell") as! StudentTableViewCell
        
        cell.name_lbl.text = student[indexPath.row].name
        cell.address_lbl.text = student[indexPath.row].address
        cell.city_lbl.text = student[indexPath.row].city
        cell.mobile_lbl.text = student[indexPath.row].mobile
        return cell
        
    }
    
}

extension ListViewController : UITableViewDelegate{
    
    
}
