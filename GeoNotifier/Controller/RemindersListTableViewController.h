//
//  RemindersListTableViewController.h
//  GeoNotifier
//
//  Created by Mattia Crispino on 15/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reminder.h"


@interface RemindersListTableViewController : UIViewController <UITableViewDataSource> {
    NSMutableArray<Reminder *> *_remindersList;
    IBOutlet UITableView *_tableView;
}

/*
@property (nonatomic,strong) NSMutableArray<Reminder *> *remindersArray;
@property (nonatomic,strong) Reminder *reminderObj;
@property (nonatomic) BOOL firstObject;
*/

 

 



@end

