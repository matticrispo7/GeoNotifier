//
//  ProvaViewController.h
//  GeoNotifier
//
//  Created by Mattia Crispino on 15/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ProvaViewController : UIViewController

//OUTLETS
@property (weak, nonatomic) IBOutlet UITextField *nameTextView;
@property (weak, nonatomic) IBOutlet UITextField *rangeTextView;
@property (weak, nonatomic) IBOutlet UITextField *enterMessageTextView;
@property (weak, nonatomic) IBOutlet UITextField *exitMessageTextView;

//ACTIONS
- (IBAction)saveReminder:(id)sender;





@end


