//
//  ProvaViewController.m
//  GeoNotifier
//
//  Created by Mattia Crispino on 15/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import "ProvaViewController.h"
#import "Reminder.h"
#import "RemindersListTableViewController.h"
#import "ViewController.h"


@interface ProvaViewController ()

@end

@implementation ProvaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveReminder:(id)sender {
    
    NSString *enterMessage, *exitMessage;
    BOOL validMessages = false;
    
    //controllo se i message sono vuoti (devo averne almeno 1)
    if(_enterMessageTextView.text.length > 0 && _exitMessageTextView.text.length > 0){
        enterMessage = _enterMessageTextView.text;
        exitMessage = _exitMessageTextView.text;
        NSLog(@"ENTER: %@ \nEXIT: %@", enterMessage, exitMessage);
        validMessages = true;
    }
    else if(_enterMessageTextView.text.length == 0 && _exitMessageTextView.text.length == 0){
        NSLog(@"NOT VALID");
        validMessages = false;
    }
    else if(_enterMessageTextView.text.length > 0){
        enterMessage = _enterMessageTextView.text;
        NSLog(@"ENTER: %@",enterMessage);
        validMessages = true;
    }
    else if(_exitMessageTextView.text.length > 0){
        exitMessage = _exitMessageTextView.text;
        NSLog(@"EXIT: %@",exitMessage);
        validMessages = true;
    }
    
    if(validMessages && _nameTextView.text.length > 0 && _rangeTextView.text.length > 0){
        NSString *rangeString = _rangeTextView.text;
        int range = [rangeString integerValue];
        NSLog(@"RANGE: %d", range);
        //costruisco l'oggetto
        Reminder *reminder = [[Reminder alloc] initWithName:_nameTextView.text andRange:range andEnterMessage:enterMessage andExitMessage:exitMessage];
        
        //aggiungo l'oggetto all'array (da usare per listare tutti i reminders nella tableView) creato in RemindersListTableViewController.h
        
        
        //chiudo la finestra e torno indietro
        
    }
    
    
    
}
@end
