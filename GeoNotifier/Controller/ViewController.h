//
//  ViewController.h
//  GeoNotifier
//
//  Created by Mattia Crispino on 13/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>{
    //used in order to gather user infos in order to update the user's location on the screen
    CLLocationManager *locationManager;
}

//OUTLETS
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


//ACTIONS
- (IBAction)locate:(id)sender;
- (IBAction)addReminder:(id)sender;
- (IBAction)listReminder:(id)sender;



@end

