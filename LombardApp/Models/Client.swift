//
//  Client.swift
//  LombardApp
//
//  Created by Ihor on 07.01.2021.
//

import Foundation

class Client : Codable {
    
    var firstName : String;
    
    var lastName : String;
    
    var surName : String;
    
    var passportID : String;
        
    var passportSeries: String;
    
    var passportRealizationDate : Date;

    init(firstName: String, lastName: String, surName: String, passportID: String, passportSeries: String, passportRealizationDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.surName = surName
        self.passportID = passportID
        self.passportSeries = passportSeries
        self.passportRealizationDate = passportRealizationDate
    }
}
