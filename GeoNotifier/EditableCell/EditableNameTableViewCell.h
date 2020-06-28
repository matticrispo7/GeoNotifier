//
//  EditableNameTableViewCell.h
//  GeoNotifier
//
//  Created by Mattia Crispino on 19/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reminder.h"


@interface EditableNameTableViewCell : UITableViewCell <UITextFieldDelegate> {
    Reminder *_editableReminder;
    IBOutlet UITextField *_textField;
    
}

- (void) setEditableReminder:(Reminder *)editableReminder;

@end

