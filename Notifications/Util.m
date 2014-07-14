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
    
    NSLog(@"New notification in %i seconds",secondsTillExpiry);
    
    localNotification = [[UILocalNotification alloc] init];
    
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:secondsTillExpiry];
    localNotification.alertBody = @"New notification";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    
}


- (void)cancelNotifications{
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
}


@end
