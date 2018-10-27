//
//  ViewController.h
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 5/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController {
        
    IBOutlet UIScrollView *scroller;
    
    IBOutlet UIScrollView *secIMainScroll;

    MKMapView *mapView;

    
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;

-(IBAction)setMapview:(id)Sender;
-(IBAction)getlocation:(id)sender;

@end
