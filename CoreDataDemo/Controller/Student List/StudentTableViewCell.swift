//
//  StudentTableViewCell.swift
//  CoreDataDemo
//
//  Created by icluster2 on 21/05/20.
//  Copyright © 2020 DSMax. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var name_lbl: UILabel!
    @IBOutlet weak var address_lbl: UILabel!
    @IBOutlet weak var city_lbl: UILabel!
    @IBOutlet weak var mobile_lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
