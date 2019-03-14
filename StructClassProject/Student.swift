//
//  Student.swift
//  StructClassProject
//
//  Created by Digital-02 on 3/11/19.
//  Copyright © 2019 Digital-02. All rights reserved.
//

import Foundation

class Student {

    var name: String!
    var gender: Gender!
    var age: Int!
    var contact: Contact!
    var socialNetwork: [SocialNetwork]?
    
    init(name: String,gender: Gender) {
        self.name = name
        self.gender = gender
        self.age = 0
        self.contact = nil
        self.socialNetwork = nil
    }
    init(name: String) {
        self.name = name
        self.gender = Gender.unspecified // .unspesified
        self.age = 0
        self.contact = nil
        self.socialNetwork = nil
    }
    init(name: String, gender: Gender, age: Int, contacts: Contact, social: [SocialNetwork]) {
        self.name = name
        self.gender = gender
        self.age = age
        self.contact = contacts
        self.socialNetwork = social
    }
    
}
enum Gender {
    case Male
    case Female
    case unspecified
}

struct Contact {
    let address: Address?
    var phoneNumber: Int
}
struct SocialNetwork {
    var url: String
    var profilePicture: String
}
struct Address {
    var address: String
    var city: String
}
