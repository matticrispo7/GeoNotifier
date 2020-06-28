//
//  Reminder.h
//  GeoNotifier
//
//  Created by Mattia Crispino on 13/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Reminder : NSObject

//PROPERTY
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *enterMessage;
@property (nonatomic, strong) NSString *exitMessage;
@property (nonatomic) int range;


- (instancetype)initWithName:(NSString *)name
                    andRange:(int)range
             andEnterMessage:(NSString *)enterMessage
              andExitMessage:(NSString *)exitMessage;

@end

