//
//  ViewController.m
//  GeoNotifier
//
//  Created by Mattia Crispino on 13/07/2019.
//  Copyright © 2019 Mattia Crispino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //step for load a predefined location
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    //this object set the initiali longitude/latitude when the map is loaded
    CLLocationCoordinate2D location;
    location.latitude = 41.8902614;
    location.longitude = 12.4930871;
    
    //set the reference for region
    region.span = span;
    
    //set the region (initial map view) loads with custom longitude/latitude (centro la regione della mappa con quelle coordinate)
    region.center = location;
    
    //richiamo il metodo per puntare effettivamente a quelle coordinate
    [self.mapView setRegion:region animated:YES];
    
    //FINE CODICE PER COORDINATE (con MapPin) FISSATE
    
    //CODICE PER POSIZIONE UTENTE
    locationManager.delegate = self;
    self.mapView.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
}


- (IBAction)locate:(id)sender {
    //grab location manager and start requesting authorization. Once got it, it will start update the map with the user location
    [locationManager requestWhenInUseAuthorization]; //authorization for FOREGROUND
    [locationManager requestAlwaysAuthorization]; //authorization for RUNNING APP (when the user is using the app)
    
    [locationManager startUpdatingLocation]; //only if the request is authorized by the user
    self.mapView.showsUserLocation = YES;
    
    
    
    //con queste righe di codice segnalo la posizione dell'utente sulle mappe ma non viene spostata la mappa per mostrare la posizione quindi eseguo ciò col metodo sotto
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    //method called when the location is updated. Now I make the app zoom into a determined location (the user location gathered with the method above)
    
    //step for load a predefined location
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    //this object set the initial longitude/latitude when the map is loaded
    CLLocationCoordinate2D location;
    location.latitude = userLocation.coordinate.latitude;
    location.longitude = userLocation.coordinate.longitude;
    
    NSLog(@"LATITUDE: %f \nLONGITUDE: %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    
    //set the reference for region
    region.span = span;
    
    //set the region (initial map view) loads with custom longitude/latitude (centro la regione della mappa con quelle coordinate)
    region.center = location;
    
    //richiamo il metodo per puntare effettivamente a quelle coordinate
    [self.mapView setRegion:region animated:YES];
}

- (IBAction)addReminder:(id)sender {
}

- (IBAction)listReminder:(id)sender {
}
@end
