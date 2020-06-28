//
//  RemindersListTableViewController.m
//  GeoNotifier
//
//  Created by Mattia Crispino on 15/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import "RemindersListTableViewController.h"
#import "Reminder.h"
#import "TableViewController.h"

@interface RemindersListTableViewController ()

@end

@implementation RemindersListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _remindersList = [[NSMutableArray alloc] init];

 
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //deseleziono la riga selezionata nella tabella
    [_tableView deselectRowAtIndexPath:[_tableView indexPathForSelectedRow] animated:YES];
    
    //ricarico i dati nella tabella (per quando, ad esempio, si torna indietro dalla schermata di modifica di un singolo ingrediente)
    [_tableView reloadData];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
#pragma mark - TODO: salvare l'array di reminder nel file JSON in questo metodo ?
}



- (Reminder *)createNewEditableReminder {
    
    NSLog(@"CREATING REMINDER");
    //creo e restituisco un oggetto Reminder senza costruttore custom
    return [[Reminder alloc] initWithName:@"" andRange:0 andEnterMessage:@"" andExitMessage:@""];
    
}

- (IBAction)addReminderButtonPressed:(id)sender {
    
    Reminder *newEditableReminder = [self createNewEditableReminder];
    
    //aggiungo l'oggetto all'array
    [_remindersList addObject:newEditableReminder];
    
    NSLog(@"DIM ARRAY: %lu",_remindersList.count);
    
    //ricarico la cella per vedere le modifiche
    [_tableView reloadData];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //NSLog(@"N ROWS: %lu", _remindersList.count);
    return _remindersList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //recupero dall'array l'oggetto reminder corrispondente alla posizione corrente
    Reminder *reminder = [_remindersList objectAtIndex:indexPath.row];
    //se sto lavorando con un oggetto creato ma a cui non ho ancora assegnato valori
    if([reminder.name isEqualToString:@""]){
        cell.textLabel.text = @"Name Vuoto";
        cell.detailTextLabel.text = @"Detail Vuoto";
    } else{
        //ho già i dati del reminder (ovvero esiste già)
        cell.textLabel.text = reminder.name;
        cell.detailTextLabel.text = reminder.enterMessage;
    }
    
    return cell;
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

 
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    //verifico che la transizione sia verso la finestra per la modifica del reminder
    if ([segue.identifier isEqualToString:@"editReminderSegue"]) { //se sto aprendo la schermata di dettaglio di un ingrediente
        //passo al view controller successivo l'ingrediente su cui lavorare
        Reminder *selectedReminder = [_remindersList objectAtIndex:[_tableView indexPathForSelectedRow].row];
        [(TableViewController *)[segue destinationViewController] setEditableReminder:selectedReminder];
    }
    
}



@end
