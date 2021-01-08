//
//  AddCategoryViewController.swift
//  LombardApp
//
//  Created by Ihor on 08.01.2021.
//

import UIKit

class AddCategoryViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var descriptionField: UITextField!
    
    @IBAction func saveButtonTouched(_ sender: UIButton) {
        
        let category = GoodCategory(name: nameField.text ?? "", description: descriptionField.text ?? "")
        let storage = UserDefaults.standard;
        var lastCategoryId : Int = Int(storage.string(forKey: "ctg_lt_id") ?? "0") ?? 0
        lastCategoryId += 1
        let encoder = JSONEncoder();
        let data = try! encoder.encode(category)
        storage.set(data, forKey: "category_\(lastCategoryId)")
        storage.set(String(lastCategoryId), forKey: "ctg_lt_id")
        clearFields()
        Alert.showSavedAlert(on: self)
    }
    
    func clearFields() {
        nameField.text = ""
        descriptionField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
