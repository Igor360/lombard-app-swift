//
//  ViewController.swift
//  LombardApp
//
//  Created by Ihor on 07.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clientCountLabel: UILabel!
    @IBOutlet weak var totalTasksCountLabel: UILabel!
    @IBOutlet weak var totalCategoriesCountLabel: UILabel!
    @IBOutlet weak var bankLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBaseData()
    }

    func loadBaseData() {
        let storage = UserDefaults.standard;
        totalCategoriesCountLabel.text = storage.string(forKey: "ctg_lt_id") ?? "0"
        totalTasksCountLabel.text = storage.string(forKey: "tsk_lt_id") ?? "0"
        clientCountLabel.text = storage.string(forKey: "clt_lt_id") ?? "0"
        bankLabel.text = storage.string(forKey: "bank") ?? "0" + "$"
    }
    
    
    @IBAction func clientsButtonTouched(_ sender: Any) {
    }
    
    
    @IBAction func categoriesButtonTouched(_ sender: Any) {
    }
    
    @IBAction func tasksButtonTouched(_ sender: Any) {
    }
    
}

