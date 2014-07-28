//
//  Util.m
//  Notifications
//
//  Created by Michael Ghattas on 2014-07-14.
//  Copyright (c) 2014 Ghattas. All rights reserved.
//

#import "Util.h"

@implementation Util
UILocalNotification *localNotification;

- (void)setNotification:(int)secondsTillExpiry{
    
    //GET USER DEFAULTS
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSNumber *badgeCounter = [prefs objectForKey:@"badgeCounter"];
    int badgeCounterInt = [badgeCounter integerValue];
    
    //INCREMENT BADGE NUMBER
    badgeCounterInt++;
    
    NSLog(@"New notification in %i seconds, badge counter = %d",secondsTillExpiry, badgeCounterInt);
    
    if(!localNotification){
        localNotification = [[UILocalNotification alloc] init];
    }
    
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:secondsTillExpiry];
    localNotification.alertBody = @"New notification";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.applicationIconBadgeNumber = badgeCounterInt;
    
    //SAVE NEW BADGE NUMBER
    badgeCounter = [NSNumber numberWithInt:badgeCounterInt];
    [prefs setObject:badgeCounter forKey:@"badgeCounter"];
    [prefs synchronize];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    
}


- (void)cancelNotifications{
    //RESET BADGE NUMBER TO ZERO
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSNumber *badgeCounter = [NSNumber numberWithInt:0];
    [prefs setObject:badgeCounter forKey:@"badgeCounter"];
    [prefs synchronize];
}

@end
