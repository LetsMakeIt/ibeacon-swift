//
//  HomeScreen.swift
//  doStuff
//
//  Created by MD on 27.09.14.
//  Copyright (c) 2014 hh. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController , UITextFieldDelegate {

    
    @IBOutlet weak var textFieldSearch: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldSearch.delegate = self
        self.navigationController.setNavigationBarHidden(true, animated: false)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    var name : AnyObject? {
        get { return NSUserDefaults.standardUserDefaults().objectForKey("name") }
        
        set { NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
        
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController.setNavigationBarHidden(true, animated: false)

    }
    
    

     func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textFieldSearch.resignFirstResponder()
        return true
    }
   
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
  override func disablesAutomaticKeyboardDismissal() -> Bool {
    return true;
    }
    
    
    
    @IBAction func button(sender: AnyObject) {
       
        
        //navigationController.pushViewController(noHashAround(), animated: true)
    
        
        
         name = textFieldSearch.text
        if ( (textFieldSearch.text == "#") || (textFieldSearch.text == nil) )
        {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("noHashAround") as UIViewController
        //self.presentViewController(vc, animated: true, completion: nil)
        self.navigationController.pushViewController(vc, animated: true)
        }
        else
        
        {
            let mainStoryboard2 = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc2 : UIViewController = mainStoryboard2.instantiateViewControllerWithIdentifier("SearchResultViewController") as UIViewController
            self.navigationController.pushViewController(vc2, animated: true)
        }
       
    }
    
    
    
}
