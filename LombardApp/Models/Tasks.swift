//
//  Tasks.swift
//  LombardApp
//
//  Created by Ihor on 07.01.2021.
//

import Foundation

class Tasks : Codable{
    
    var categoryName : String;
    
    var clientId : String;
    
    var goodsDescription : String;
    
    var realizeDate : Date;
    
    var retrurnDate : Date!;
    
    var amount: Double;
    
    var fee : Double;
    
    init(category: String, client: String, descGoods: String, relDate: Date, retDate: Date!, amount: Double, fee: Double) {
        self.categoryName = category
        self.clientId = client
        self.goodsDescription = descGoods
        self.realizeDate = relDate
        self.retrurnDate = retDate
        self.amount = amount
        self.fee = fee
    }
    
}
