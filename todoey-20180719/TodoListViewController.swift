//
//  ViewController.swift
//  todoey-20180719
//
//  Created by CHUNMING HSU on 2018/7/19.
//  Copyright © 2018年 NiMaoTech. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    let itemArray = ["aaa", "bbb", "ccc"]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else { tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark}
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    
    
    
    
    
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
}

