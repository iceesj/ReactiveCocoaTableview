//
//  HomeTableViewModel.swift
//  ReactiveCocoaTableview
//
//  Created by tom on 16/7/4.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit
import ReactiveViewModel

class HomeTableViewModel: RVMViewModel {
    dynamic var dataIndex : String = ""
    dynamic var dataSource : NSMutableArray!
    
    
    override init() {
        super.init()
        self.setupData()
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (__int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), {
            self.updateData()
        })
        
    }
    
    
    func setupData(){
        self.dataSource = NSMutableArray.init(capacity: 0)
        for i in 0..<10 {
            let model = HomeModel()
            model.title = NSString.localizedStringWithFormat("%d", i) as String
            self.dataSource.addObject(model)
        }
        self.dataIndex = "1"
    }
    
    func updateData(){
        self.dataSource.removeAllObjects()
        
        for i in 0..<10 {
            let model = HomeModel()
            model.title = NSString(format: "%d", i*10 ) as String
            self.dataSource.addObject(model)
        }
        self.dataIndex = "2"
    }
    
    
    
}
