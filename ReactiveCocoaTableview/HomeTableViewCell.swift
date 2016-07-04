//
//  HomeTableViewCell.swift
//  ReactiveCocoaTableview
//
//  Created by tom on 16/7/4.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    var model : HomeModel{
        get{
            return self.model
        }
        set (newValue){
//            self.model = newValue
            print("newValue = \(newValue.title)")
            
            self.textLabel?.text = newValue.title
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
