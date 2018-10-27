//
//  SectionIVC.h
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 16/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "OHAttributedLabel.h"
#import "NSAttributedString+Attributes.h"

@interface SectionIVC : UIViewController{

    IBOutlet UIScrollView *ScollSI1;
    IBOutlet UIScrollView *ScrollSI2;
    IBOutlet UIScrollView *Scroll2500;
    IBOutlet UIScrollView *ScrollSI5000;
    IBOutlet UIScrollView *ScrollSI5500;
    IBOutlet UIScrollView *ScrollSI1500;
    IBOutlet UIScrollView *ScrollSI6500;
    IBOutlet UIScrollView *ScrollSI7000;
        IBOutlet UIScrollView *ScrollSI7500;
    IBOutlet UIScrollView *ScrollSI8700;
    IBOutlet UIScrollView *ScrollSI13000;
    IBOutlet UIScrollView *ScrollSI800;
    IBOutlet UIScrollView *ScrollSI11000;
        IBOutlet UISegmentedControl *seg;
    IBOutlet UISegmentedControl *seg1;    
    MKMapView *mapView;
    
    
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;

-(IBAction)setMap:(id)sender;
-(IBAction)getlocation:(id)sender;




- (IBAction)segment1CtrlChanged:(id)sender;
- (IBAction)segmentCtrlChanged:(id)sender;


@property(retain, nonatomic) IBOutlet OHAttributedLabel* htmlLabel;
@property(retain, nonatomic) IBOutlet OHAttributedLabel* basicMarkupLabel;



    

@end
