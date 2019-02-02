//
//  ViewController.swift
//  TableView
//
//  Created by apple on 02/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var names: [String] = ["Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda", "Prasad", "DNREDDi", "Manohar", "Ramu", "Raju", "Naveen", "Nanda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(names.count)
        return names.count // 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell")
        
        cell?.textLabel?.text = names[indexPath.row]
        
        return cell!
    }
    
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var freeCell = tableView.dequeueReusableCell(withIdentifier: "Cell")
//
//        if freeCell == nil {
//            print("Creating cell for :")
//            print("\(indexPath.section), \(indexPath.row)")
//
//            freeCell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
//        }
//        freeCell!.textLabel?.text = names[indexPath.row]
//        return freeCell!
//    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User clicked on section: \(indexPath.section), row \(indexPath.row)")
        print("\(names[indexPath.row])")
    }
}

