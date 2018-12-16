//
//  TableViewController.swift
//  PDFReaderAppExample
//
//  Created by Anton Siauruk on 12/5/18.
//  Copyright © 2018 Anton Siauruk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var docs = ["MacBook-Air-13-2018", "iMac-Pro-2017", "iPhone-XR-info"]
    private var fileName: String!

    // MARK: Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return docs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = docs[indexPath.row]
        
        return cell
    }
    
    // MARK: Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        fileName = docs[indexPath.row]
        
        performSegue(withIdentifier: "showDoc", sender: self)
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pdfVC = segue.destination as! PDFViewController
        pdfVC.title = fileName
    }
    
}

