//
//  Person.swift
//  StructClassProject
//
//  Created by Digital-02 on 3/11/19.
//  Copyright © 2019 Digital-02. All rights reserved.
//

import Foundation

class Person { 
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
