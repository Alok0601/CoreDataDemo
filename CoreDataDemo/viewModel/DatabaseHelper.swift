//
//  DatabaseHelper.swift
//  CoreDataDemo
//
//  Created by icluster2 on 21/05/20.
//  Copyright © 2020 DSMax. All rights reserved.
//

import Foundation
import CoreData
import UIKit

open class DatabaseHelper {
    
    static var sharedInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(Object:[String:String]){
        
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        
        student.name = Object["name"]
        student.address = Object["address"]
        student.city = Object["city"]
        student.mobile = Object["mobile"]
        
        do{
            
           try context?.save()
            
        }catch{
            
            print("Data is not save")
        }
    }
    
    func getStudentData() -> [Student] {
        var student = [Student]()
        let fetchRequest = NSFetchRequest<Student>(entityName: "Student")
        do{

            student = try context?.fetch(fetchRequest) as! [Student]

        }catch{
            print("Data not found")

        }
        
        return student
    }
    
    
}
