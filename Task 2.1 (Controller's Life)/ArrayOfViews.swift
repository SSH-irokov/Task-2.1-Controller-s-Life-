//
//  ArrayOfViews.swift
//  Task 2.1 (Controller's Life)
//
//  Created by Павел on 10/05/2019.
//  Copyright © 2019 Павел. All rights reserved.
//

import Foundation

struct StructOfView {
    let strFunc: String
    let color: String
    
    init (strFunc: String, color: String) {
        self.strFunc = strFunc
        self.color = color
    }
}

var arrayOfStructOfView = [StructOfView]()
