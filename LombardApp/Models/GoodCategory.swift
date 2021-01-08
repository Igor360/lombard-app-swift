//
//  GoodCategory.swift
//  LombardApp
//
//  Created by Ihor on 07.01.2021.
//

import Foundation


class GoodCategory : Codable {
    
    var name: String;
    
    var description : String;
    
    init(name : String, description: String) {
        self.name = name
        self.description = description
    }
}
