//
//  MyModalViewController.h
//  DelegationInObjC
//
//  Created by Nicholas Outram on 14/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyModalViewControllerProtocol <NSObject>
-(void)doDismiss;
@end

@interface MyModalViewController : UIViewController

@property(readwrite, nonatomic, weak) id<MyModalViewControllerProtocol> delegate;

@end
