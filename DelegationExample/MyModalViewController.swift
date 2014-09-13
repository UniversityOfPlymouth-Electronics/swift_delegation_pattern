//
//  MyModalViewController.swift
//  DelegationExample
//
//  Created by Nicholas Outram on 13/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

// THIS VERSION CANNOT CREATE A RETAIN CYCLE :o)

import UIKit

//Empty protocol
protocol MyModalViewControllerIsUIViewController { }

//ONLY UIViewController and all its subclasses implement this protocol
extension UIViewController : MyModalViewControllerIsUIViewController { }

//I prefer this approach - the protocol is specified to be a class protocol
//No textual references to ObjectiveC, keeping this clean Swift

protocol MyModalViewControllerProtocol : class {
    func doDismiss()
}

class MyModalViewController: UIViewController {

    //The delegate must be a reference type (class), so it can now be weak or unowned

    // Using a composite protocol, this class implements both the following:
    
    //      MyModalViewControllerProtocol           - to ensure the correct methods are implmented
    //      MyModalViewControllerIsUIViewController - to ensure it is of type UIViewController (or a subclass)
    
    // The compiler will only allow the delegate to be set to an object that conforms
    weak var delegate : protocol<MyModalViewControllerProtocol, MyModalViewControllerIsUIViewController>?
    
    @IBAction func doDismiss(sender: AnyObject) {
        //Call dismiss method on presenting object if the delegate is set
        self.delegate?.doDismiss()
    }

    

}
