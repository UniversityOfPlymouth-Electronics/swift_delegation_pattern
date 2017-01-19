//
//  MyModalViewController.swift
//  DelegationExample
//
//  Created by Nicholas Outram on 13/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

// THIS VERSION CANNOT CREATE A RETAIN CYCLE :o)

import UIKit

//I prefer this approach - the protocol is specified to be a class protocol
//No textual references to ObjectiveC, keeping this clean Swift

protocol MyModalViewControllerProtocol : class {
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
