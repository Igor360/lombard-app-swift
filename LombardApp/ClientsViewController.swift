//
//  ClientsViewController.swift
//  LombardApp
//
//  Created by Ihor on 08.01.2021.
//

import UIKit

class ClientsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    private let cellID : String = "clientTableCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clients.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:cellID, for: indexPath)
        let textUI = UILabel();
        textUI.text = clients[indexPath.item]
        let deleteButton = UIButton()
        deleteButton.setTitle("Delete", for: .normal)
        let editButton = UIButton()
        editButton.setTitle("Edit", for: .normal)
        cell.contentView.addSubview(textUI)
        cell.contentView.addSubview(editButton)
        cell.contentView.addSubview(deleteButton)
        return cell
    }
    

    var clients : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func loadData(){
        let storage = UserDefaults.standard;
        
        let lastId : Int = Int(storage.string(forKey: "clt_lt_id") ?? "0") ?? 0
        
        for i in 0...lastId {
            let client = storage.string(forKey: "client_\(i)")
            if client != nil {
                clients.append(client ?? "")
            }
        }
    }
    
}
