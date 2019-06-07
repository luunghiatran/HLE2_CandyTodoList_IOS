//
//  Todo.swift
//  CandyTodoList
//
//  Created by NghiaTL on 6/7/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import Foundation

class Todo {
    var checked: Bool = false
    var text: String = ""
    
    init(checked: Bool, text: String) {
        self.checked = checked
        self.text = text
    }
}
