//
//  SectionIVC.m
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 16/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SectionIVC.h"
#import "NSAttributedString+Attributes.h"
#import "OHASBasicHTMLParser.h"
#import "OHASBasicMarkupParser.h"
//#import "MapViewAnnotation1.h"
@interface SectionIVC ()

@property(nonatomic, retain) NSMutableSet* visitedLinks;
@end


@implementation SectionIVC

@synthesize htmlLabel = htmlLabel;
@synthesize basicMarkupLabel = _basicMarkupLabel;
@synthesize visitedLinks = _visitedLinks;
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        self.visitedLinks = [NSMutableSet set];
    }
    return self;
}

-(BOOL) canBecomeFirstResponder {
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (event.subtype == UIEventSubtypeMotionShake) {
        [self performSegueWithIdentifier:@"Home" sender:self];
    }
    
}


@synthesize mapview;
-(IBAction)getlocation
{
    mapview.showsUserLocation  = YES;
    
}
-(IBAction)setMap:(id)sender
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
    // Set some coordinates for our position (Buckingham Palace!)
	CLLocationCoordinate2D location;
	location.latitude = (double) 51.501468;
	location.longitude = (double) -0.141596;
    
	// Add the annotation to our map view
	//MapViewAnnotation1 *newAnnotation = [[MapViewAnnotation1 alloc] initWithTitle:@"Buckingham Palace" andCoordinate:location];
	//[self.mapview addAnnotation:newAnnotation];


    
    // HTML label
    self.htmlLabel.attributedText = [OHASBasicHTMLParser attributedStringByProcessingMarkupInAttributedString:self.htmlLabel.attributedText];
    
    
  [super viewDidLoad];
    
 //   myNavController.navigationBar.tintColor = [UIColor colorWithRed:arc4random() % 100 / 100.0f green:arc4random() % 100 / 100.0f blue:arc4random() % 100 / 100.0f alpha:1.0f];
    UINavigationBar *bar = [self.navigationController navigationBar]; 
    bar.barStyle = UIBarStyleBlack;
    
    ScollSI1.contentSize=CGSizeMake(320, 3500);
    ScrollSI2.contentSize=CGSizeMake(320, 2000);
    Scroll2500.contentSize=CGSizeMake(320, 2500);
    ScrollSI1500.contentSize=CGSizeMake(320, 1500);
    ScrollSI5000.contentSize=CGSizeMake(320, 5000);
    ScrollSI5500.contentSize=CGSizeMake(320, 5500);
    ScrollSI6500.contentSize=CGSizeMake(320, 6200);
    ScrollSI7000.contentSize=CGSizeMake(320, 7000);
    ScrollSI7500.contentSize=CGSizeMake(320, 7500);
    ScrollSI8700.contentSize=CGSizeMake(320, 9100);
    ScrollSI11000.contentSize=CGSizeMake(320, 11000);
    ScrollSI13000.contentSize=CGSizeMake(320, 15000);
    ScrollSI800.contentSize=CGSizeMake(320, 800);
    [super viewDidLoad];
	// Do any additional setup after loading the view.

}
- (IBAction)segmentCtrlChanged:(id)sender {

    if (seg.selectedSegmentIndex == 0) 
        [self performSegueWithIdentifier:@"segue1" sender:self];
    else if (seg.selectedSegmentIndex == 1) 
        [self performSegueWithIdentifier:@"segue2" sender:self];
    else if (seg.selectedSegmentIndex == 2) 
        [self performSegueWithIdentifier:@"segue3" sender:self];
}

- (IBAction)segment1CtrlChanged:(id)sender {
    
    if (seg1.selectedSegmentIndex == 0) 
        [self performSegueWithIdentifier:@"segue1" sender:self];
    else if (seg1.selectedSegmentIndex == 1) 
        [self performSegueWithIdentifier:@"segue2" sender:self];
    else if (seg1.selectedSegmentIndex == 2) 
        [self performSegueWithIdentifier:@"segue3" sender:self];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    {
        if ((interfaceOrientation == UIInterfaceOrientationPortrait) ||
            (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))
            return YES;
        
        return NO;
    }
}

-(void) viewDidAppear:(BOOL)animated
{
    [self  becomeFirstResponder];
    
    [super viewDidAppear:animated];
}

-(void) viewWillDisappear:(BOOL)animated

{
    [self  resignFirstResponder];
    
    [super viewWillDisappear:animated];
}

// When a map annotation point is added, zoom to it (1500 range)
//- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
//{
//	MKAnnotationView *annotationView = [views objectAtIndex:0];
//	id <MKAnnotation> mp = [annotationView annotation];
//	MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 1500, 1500);
//	[mv setRegion:region animated:YES];
//	[mv selectAnnotation:mp animated:YES];
//}

// Received memory warning
//- (void)didReceiveMemoryWarning {
  //  [super didReceiveMemoryWarning];
//}

@end
