//
//  EditableEntertMessageTableViewCell.m
//  GeoNotifier
//
//  Created by Mattia Crispino on 19/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import "EditableEntertMessageTableViewCell.h"

@implementation EditableEntertMessageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setEditableReminder:(Reminder *)editableReminder{
    //recupero il riferimento
    _editableReminder = editableReminder;
    
    //configurazione della textField
    _textField.text = _editableReminder.enterMessage;
    
    //quando il testo viene cambiato, chiamo il metodo textFieldDidChange
    [_textField addTarget:self action:@selector(textFieldDidChange) forControlEvents:UIControlEventEditingChanged];
    
}

#pragma mark - Text Field delegate

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (void) textFieldDidChange {
    //aggiorno il nome dell'ingrediente con il contenuto del textField
    _editableReminder.enterMessage = _textField.text;
    
}

@end
