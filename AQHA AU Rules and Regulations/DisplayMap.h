//
//  DisplayMap.h
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 26/02/13.
//  Copyright (c) 2013 Australian Quarter Horse Association. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MessageUI/MessageUI.h>
@interface AddressAnnotation : NSObject <MKAnnotation> 
{
    CLLocationCoordinate2D coordinate;
    
    NSString *title;
    NSString *subTitle;
}

- (IBAction) showAddress;
@end


@interface DisplayMap : UIViewController  <MKMapViewDelegate, MFMailComposeViewControllerDelegate>{
    
    MKMapView *mapView;
   AddressAnnotation *addAnnotation;
    
};
 - (IBAction)openMail:(id)sender;


@end
//<MFMailComposeViewControllerDelegate>