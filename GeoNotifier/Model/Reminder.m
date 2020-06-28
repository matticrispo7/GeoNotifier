//
//  Reminder.m
//  GeoNotifier
//
//  Created by Mattia Crispino on 13/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import "Reminder.h"

@implementation Reminder

//CUSTOM INITIALIZER
- (instancetype)initWithName:(NSString *)name
                    andRange:(int)range
             andEnterMessage:(NSString *)enterMessage
              andExitMessage:(NSString *)exitMessage
{
    self = [super init];
    if (self) {
        self.name = name;
        self.range = range;
        self.enterMessage = enterMessage;
        self.exitMessage = exitMessage;
    }
    return self;
}

@end
