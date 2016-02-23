//
//  ViewController.swift
//  popover
//
//  Created by Paul Zhang on 28/09/2015.
//  Copyright © 2015 Paul Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Popup" {
            if let controller = segue.destinationViewController as UIViewController? {
                if let popup = controller.popoverPresentationController {
                    popup.delegate = self
                }
            }
            
        }
    }
    
//    Set the style for popover view
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
    

}

