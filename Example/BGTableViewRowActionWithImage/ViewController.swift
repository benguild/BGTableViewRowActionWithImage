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
        tableView.rowHeight = 80
    }

    // MARK: - <UITableViewDataSource>

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("identifier", forIndexPath: indexPath)
    }

    // MARK: - <UITableViewDelegate>

    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let action = BGTableViewRowActionWithImage.rowActionWithStyle(
            UITableViewRowActionStyle.Default,
            title: ((indexPath.row % 2) == 0 ? "action" : nil),
            backgroundColor: .lightGrayColor(),
            image: UIImage(named: "star"),
            forCellHeight: UInt(tableView.rowHeight),
        ) { (action, indexPath) in
            print("Selected action on indexPath=\(indexPath.section)/\(indexPath.row)")
        }

        return [action]
    }
}
