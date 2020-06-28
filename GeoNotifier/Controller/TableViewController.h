//
//  TableViewController.h
//  GeoNotifier
//
//  Created by Mattia Crispino on 13/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reminder.h"


@interface TableViewController : UITableViewController {
    
    Reminder *_editableReminder;
    IBOutlet UITableView *_tableView;
    //array usato per il titolo delle sections
    NSArray *titleSections;
}

- (void) setEditableReminder:(Reminder *)editableReminder;



@end

