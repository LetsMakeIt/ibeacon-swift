//
//  SearchResultViewController.swift
//  doStuff
//
//  Created by MD on 27.09.14.
//  Copyright (c) 2014 hh. All rights reserved.
//

import UIKit

class SearchResultViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    
    var tableData = ["One","Two" , "Three"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController.setNavigationBarHidden(false, animated: false)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var name : AnyObject? {
        get { return NSUserDefaults.standardUserDefaults().objectForKey("name") }
    }
    
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
         //tableView.backgroundColor = UIColor.blackColor()
        //tableView.backgroundView.backgroundColor = UIColor.blackColor()
     
        //return tableData.count;
      return 10
    }
    
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
      //  cell.textLabel.text = tableData[indexPath.row]
        
          cell.textLabel.text = name as String
        //cell.selectionStyle = UITableViewCellSelectionStyle.Blue
        //cell.accessoryView.backgroundColor = UIColor.blueColor()
        
        //cell.backgroundColor = UIColor.greenColor()
        
   //cell.backgroundColor = UIColor.greenColor()
//        cell.backgroundColor = UIColor.init(red: CGFloat(103), green: CGFloat(228), blue: CGFloat(136), alpha: CGFloat(1.f))

        //var cc : UIColor = UIColor(red: 103, green: 228 , blue: 136, alpha: 1)
        //cell.backgroundColor = cc
        
        cell.backgroundColor = UIColor(red: CGFloat(103.0/255), green: CGFloat(228.0/255) , blue: CGFloat(136.0/255), alpha: 1)

        return cell
    }
    
    
    
}
