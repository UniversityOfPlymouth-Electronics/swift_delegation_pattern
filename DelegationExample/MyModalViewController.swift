//
//  MyModalViewController.swift
//  DelegationExample
//
//  Created by Nicholas Outram on 13/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

// THIS VERSION CANNOT CREATE A RETAIN CYCLE :o)

import UIKit

//Objective C only supports classes for protocol conformance, so by implication, a class protocol
//This is rather odd given there is no ObjectiveC in this project. 
//One argument is that UIViewController is ObjectiveC code (an assumption I would add).
//This pattern should be applicable to code with or without reference to UIKit

@objc protocol MyModalViewControllerProtocol {
    func doDismiss()
}

class MyModalViewController: UIViewController {

    //The delegate must be a reference type (class), so it can now be weak or unowned
    //Semantically the delegate no longer implies ownership
    weak var delegate : MyModalViewControllerProtocol?
    
    @IBAction func doDismiss(_ sender: AnyObject) {
        //Call dismiss method on presenting object if the delegate is set
        self.delegate?.doDismiss()
    }
}
