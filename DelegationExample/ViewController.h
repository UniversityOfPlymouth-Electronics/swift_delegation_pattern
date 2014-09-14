//
//  ViewController.h
//  DelegationInObjC
//
//  Created by Nicholas Outram on 14/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModalViewController.h"

//This class conforms to the protocol MyModalViewControllerProtocol
@interface ViewController : UIViewController<MyModalViewControllerProtocol>


@end

