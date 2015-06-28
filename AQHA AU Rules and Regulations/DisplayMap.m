//
//  DisplayMap.m
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 26/02/13.
//  Copyright (c) 2013 Australian Quarter Horse Association. All rights reserved.
//

#import "DisplayMap.h"


@implementation AddressAnnotation

@synthesize coordinate;

- (NSString *)subtitle
{
    return @"Hillvue NSW 2340";
}
- (NSString *)title
{
    return @"Lot 13/ Jack Smyth Drv ‎";
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c
{
    coordinate=c;
    NSLog(@"%f,%f",c.latitude,c.longitude);
    return self;
}

@end

@implementation DisplayMap

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        [self showAddress];
        mapView.delegate = self;
        [mapView selectAnnotation:[mapView.annotations objectAtIndex:0] animated:TRUE]; 
    }
- (IBAction) showAddress 
{
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta=0.2;
    span.longitudeDelta=0.2;
    
    CLLocationCoordinate2D location = mapView.userLocation.coordinate;
    
    location.latitude = -31.122138;
    location.longitude = 150.895114;
    region.span=span;
    region.center=location;
    
    if(addAnnotation != nil) 
    {
        [mapView removeAnnotation:addAnnotation];
        
        addAnnotation = nil;
    }
    
    addAnnotation = [[AddressAnnotation alloc] initWithCoordinate:location];
    [mapView addAnnotation:addAnnotation];
    [mapView setRegion:region animated:TRUE];
    [mapView regionThatFits:region];

}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    NSLog(@"viewForAnnotation");
    
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil; 
    
    static NSString *annotationIdentifier = @"AnnotationIdentifier"; 
    
    MKPinAnnotationView *pinView = (MKPinAnnotationView *) [mapView 
                                                            dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    
    if (!pinView) 
    {
        pinView = [[MKPinAnnotationView alloc] 
                    initWithAnnotation:annotation 
                    reuseIdentifier:annotationIdentifier];
        
        [pinView setPinColor:MKPinAnnotationColorGreen];
        pinView.animatesDrop = YES; 
        pinView.canShowCallout = YES; 
        UIButton *btnViewVenue = [UIButton buttonWithType:UIButtonTypeDetailDisclosure] ;
            [btnViewVenue addTarget:self action:@selector(pinTouched:) forControlEvents:UIControlEventTouchUpInside];
        pinView.rightCalloutAccessoryView=btnViewVenue;
       
    }
    else 
    {
        pinView.annotation = annotation;
    }
    
 
    return pinView; 
}

-(void)pinTouched:(UIButton *)sender
{
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:02-6762-6444 "]]];
    } else {
        UIAlertView *Notpermitted=[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Your device doesn't support this feature." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [Notpermitted show];

    }
}
          
- (IBAction)openMail:(id)sender
{
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
        mailer.mailComposeDelegate = self;
        [mailer setSubject:@"Query for AQHA"];
        NSArray *toRecipients = [NSArray arrayWithObjects:@"qhorse@aqha.com.au", nil];
        [mailer setToRecipients:toRecipients];
        [self presentModalViewController:mailer animated:YES];

    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failure"
                                                        message:@"Your device doesn't support the composer sheet"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}



- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    // Remove the mail view
    [self dismissModalViewControllerAnimated:YES];
}

@end








