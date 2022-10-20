//
//  Person.swift
//  ObjectDataTransition
//
//  Created by Anderson Sales on 20/10/22.
//

import Foundation

struct Person {
    var name: String?
    var email: String?
    
    init(name: String? = nil, email: String? = nil) {
        self.name = name
        self.email = email
    }
}
