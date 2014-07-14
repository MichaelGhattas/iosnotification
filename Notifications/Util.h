//
//  Util.h
//  Notifications
//
//  Created by Michael Ghattas on 2014-07-14.
//  Copyright (c) 2014 Ghattas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Util : NSObject

- (void)setNotification:(int)secondsTillExpiry;
- (void)cancelNotifications;

@end
