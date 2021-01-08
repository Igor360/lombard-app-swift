//
//  Alert.swift
//  LombardApp
//
//  Created by Ihor on 08.01.2021.
//
import Foundation
import UIKit

class Alert {
    private static func showAlert(on vc:UIViewController,with title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async { vc.present(alert, animated: true, completion: nil) }
    }
    
    static func showSavedAlert(on vc:UIViewController) {
        showAlert(on: vc, with: "", message: "Data saved")
    }
    
    static func showErrorAlert(on vc: UIViewController) {
        showAlert(on: vc, with: "", message: "Something went wrong!!!")
    }
    
    static func showAmountErrorAlert(on vc: UIViewController) {
        showAlert(on: vc, with: "", message: "Invalid amount")
    }
}
