//
//  ViewController.swift
//  BGTableViewRowActionWithImage
//
//  Created by Tom Kraina on 05/09/2016.
//  Copyright © 2016 tomkraina. All rights reserved.
//

import UIKit
import BGTableViewRowActionWithImage


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.rowHeight = 80
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let identifier = "Identifier"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
        
        return cell
        
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let image = UIImage(named: "star")
        let title: String? = indexPath.row%2==0 ? "action" : nil
        let cellHeight = UInt(tableView.rowHeight)
        
        let action = BGTableViewRowActionWithImage.rowActionWithStyle(UITableViewRowActionStyle.Default, title: title, backgroundColor: .lightGrayColor(), image: image, forCellHeight: cellHeight) { (action, indexPath) in
        
            
            print("Selected action on indexPath=\(indexPath.section)/\(indexPath.row)")
        }
        
        return [action]
    
    }
    
}

