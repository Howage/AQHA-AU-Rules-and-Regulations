//
//  ViewController.m
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 5/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()



@end

@implementation ViewController

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {

if (event.subtype == UIEventSubtypeMotionShake) {
    [self performSegueWithIdentifier:@"segue2" sender:self];
}

}
@synthesize mapview;
-(IBAction)getlocation:(id)sender
{
    mapview.showsUserLocation  = YES;
    
}
-(IBAction)setMapview:(MKMapView *) mapview:(id)sender
{
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapview.mapType = MKMapTypeStandard;
            break;
        case 1:
            mapview.mapType = MKMapTypeSatellite;
        case 2:
            mapview.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
}
- (void)viewDidLoad
{
    scroller.contentSize=CGSizeMake(320, 1000);
    secIMainScroll.contentSize=CGSizeMake(320, 1000);
    UINavigationBar *bar = [self.navigationController navigationBar]; 
    [bar setTintColor:[UIColor whiteColor]]; 
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)viewDidUnload
{   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
