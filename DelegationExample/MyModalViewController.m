//
//  MyModalViewController.m
//  DelegationInObjC
//
//  Created by Nicholas Outram on 14/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

#import "MyModalViewController.h"


@interface MyModalViewController ()

@end


@implementation MyModalViewController


- (IBAction)doDismissButton:(id)sender {
    //Tell presenting view controller to dismiss me
    [self.delegate doDismiss];
}


@end
