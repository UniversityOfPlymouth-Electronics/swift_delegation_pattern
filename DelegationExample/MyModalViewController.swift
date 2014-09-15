//
//  MyModalViewController.swift
//  DelegationExample
//
//  Created by Nicholas Outram on 13/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

// I SUSPECT THIS VERSION TO CREATE A RETAIN CYCLE

import UIKit

protocol MyModalViewControllerProtocol {
    func doDismiss()
}

class MyModalViewController: UIViewController {
    //The delegate might be a value type, so it cannot be weak or unowned
    //Does this cause a retain cycle?
    //Semantically it "suggests" ownership
    var delegate : MyModalViewControllerProtocol?
    
    @IBAction func doDismiss(sender: AnyObject) {
        //Call dismiss method on presenting object if the delegate is set
        self.delegate?.doDismiss()
    }
}
