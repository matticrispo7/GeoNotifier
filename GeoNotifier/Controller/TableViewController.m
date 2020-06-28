//
//  TableViewController.m
//  GeoNotifier
//
//  Created by Mattia Crispino on 13/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import "TableViewController.h"
#import "RemindersListTableViewController.h"
#import "EditableNameTableViewCell.h"
#import "EditableRangeTableViewCell.h"
#import "EditableEntertMessageTableViewCell.h"
#import "EditableExitMessageTableViewCell.h"


@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //inizializzo l'array per i titoli delle sections
    titleSections = @[@"Name", @"Range (mt)", @"Enter Message", @"Exit Message"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void) setEditableReminder:(Reminder *)editableReminder {
    //memorizzo il riferimento all'ingrediente da modificare
    _editableReminder = editableReminder;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //creo una cella generica che l'adatto in base all'indexPath in cui mi trovo
    UITableViewCell *cell;
    
    
    if(indexPath.section == 0){
        //NAME CELL
        cell = [tableView dequeueReusableCellWithIdentifier:@"nameEditableCell" forIndexPath:indexPath];
        //passo il riferimento al reminder alla cella
        [(EditableNameTableViewCell *)cell setEditableReminder:_editableReminder];
    }else if(indexPath.section == 1){
        //RANGE CELL
        cell = [tableView dequeueReusableCellWithIdentifier:@"rangeEditableCell" forIndexPath:indexPath];
        //passo il riferimento al reminder alla cella
        [(EditableRangeTableViewCell *)cell setEditableReminder:_editableReminder];
    }else if(indexPath.section == 2){
        //ENTER MESSAGE CELL
        cell = [tableView dequeueReusableCellWithIdentifier:@"enterMessageEditableCell" forIndexPath:indexPath];
        //passo il riferimento al reminder alla cella
        [(EditableEntertMessageTableViewCell *)cell setEditableReminder:_editableReminder];
    }else{
        //EXIT MESSAGE CELL
        cell = [tableView dequeueReusableCellWithIdentifier:@"exitMessageEditableCell" forIndexPath:indexPath];
        //passo il riferimento al reminder alla cella
        [(EditableExitMessageTableViewCell *)cell setEditableReminder:_editableReminder];
    }
    
    return cell;
    
   
}

/*
//modifica titolo per le section
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:titleSections[section],section];
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    /*
    if([sender isKindOfClass:[UITableViewCell class]]){
        if([segue.destinationViewController isKindOfClass:[RemindersListTableViewController class]]){
            RemindersListTableViewController *remindersListVC = segue.destinationViewController;
            NSLog(@"OBJECT CREATED");
            Reminder *reminder = [[Reminder alloc] initWithName:@"Prova nome" andRange:245 andEnterMessage:@"EntMsg" andExitMessage:@"ExtMsg"];
            NSLog(@"ADDED OBJECT WITH: %@, %d, %@, %@", reminder.name, reminder.range, reminder.enterMessage, reminder.exitMessage);
            
            remindersListVC.reminderObj = reminder;
            NSLog(@"OBJ PASSED TO PROPERTY");
        }
    }
    */
    
    
}















/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/




@end
