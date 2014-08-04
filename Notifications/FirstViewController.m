//
//  FirstViewController.m
//  Notifications
//
//  Created by Michael Ghattas on 2014-07-14.
//  Copyright (c) 2014 Ghattas. All rights reserved.
//

#import "FirstViewController.h"
#import "Util.h"

@interface FirstViewController (){
    Util *util;
}

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    util = [[Util alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)setNotification:(id)sender {
    
    NSLog(@"Setting notification");
    [util setNotification:5];
}

- (IBAction)resetNotifications:(id)sender {
    
    NSLog(@"Cancelling notifications");
    [util cancelNotifications];
    
}

- (IBAction)minutesStepper:(id)sender {

}

@end
