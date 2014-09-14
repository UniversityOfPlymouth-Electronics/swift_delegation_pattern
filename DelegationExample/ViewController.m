//
//  ViewController.m
//  DelegationInObjC
//
//  Created by Nicholas Outram on 14/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString* dst = segue.identifier;
    if ([dst isEqualToString:@"ModalPresentation"]) {
        //The storyboard + nib loading mechanism maintains a strong reference to the modal view controller
        MyModalViewController* vc = (MyModalViewController*)segue.destinationViewController;
        //self, the presenting view controller instance, is the delegate object (recieving call back messages)
        vc.delegate = self;
    }
}

//Call back to dismiss the presented modal view controller
-(void)doDismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
