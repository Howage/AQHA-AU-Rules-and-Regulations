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




- (void)viewDidLoad
{
    // Set some coordinates for our position (Buckingham Palace!)

	// Add the annotation to our map view
	//MapViewAnnotation1 *newAnnotation = [[MapViewAnnotation1 alloc] initWithTitle:@"Buckingham Palace" andCoordinate:location];
	//[self.mapview addAnnotation:newAnnotation];


    
    // HTML label
    //self.htmlLabel.attributedText = [OHASBasicHTMLParser attributedStringByProcessingMarkupInAttributedString:self.htmlLabel.attributedText];
    
    
  [super viewDidLoad];
    
 //   myNavController.navigationBar.tintColor = [UIColor colorWithRed:arc4random() % 100 / 100.0f green:arc4random() % 100 / 100.0f blue:arc4random() % 100 / 100.0f alpha:1.0f];
    UINavigationBar *bar = [self.navigationController navigationBar]; 
    bar.barStyle = UIBarStyleBlack;
    
    ScollSI1.contentSize=CGSizeMake(320, 3500);
    ScrollSI2.contentSize=CGSizeMake(320, 2000);
    Scroll2200.contentSize=CGSizeMake(320, 2200);
    Scroll2500.contentSize=CGSizeMake(320, 2500);
    ScrollSI1500.contentSize=CGSizeMake(320, 1500);
    ScrollSI5000.contentSize=CGSizeMake(320, 5000);
    ScrollSI4900.contentSize=CGSizeMake(320, 4900);
    ScrollSI5500.contentSize=CGSizeMake(320, 5500);
    ScrollSI6500.contentSize=CGSizeMake(320, 6200);
    ScrollSI7000.contentSize=CGSizeMake(320, 7000);
    ScrollSI7500.contentSize=CGSizeMake(320, 7500);
    ScrollSI8700.contentSize=CGSizeMake(320, 9100);
    ScrollSI8600.contentSize=CGSizeMake(320, 8600);
    ScrollSI8400.contentSize=CGSizeMake(320, 8400);
    ScrollSI11000.contentSize=CGSizeMake(320, 11000);
    ScrollSI13000.contentSize=CGSizeMake(320, 15000);
    ScrollSI800.contentSize=CGSizeMake(320, 800);
    ScrollSI3200.contentSize=CGSizeMake(320, 3200);
    ScrollSI650.contentSize=CGSizeMake(320, 650);
    ScrollSI900.contentSize=CGSizeMake(320, 900);
    ScrollSI1000.contentSize=CGSizeMake(320, 1000);
    ScrollSI1100.contentSize=CGSizeMake(320, 1100);
    ScrollSI4500.contentSize=CGSizeMake(320, 4500);
    ScrollSI4200.contentSize=CGSizeMake(320, 4200);
     ScrollSI4700.contentSize=CGSizeMake(320, 4700);
    ScrollSI1200.contentSize=CGSizeMake(320, 1200);
    ScrollSI1300.contentSize=CGSizeMake(320, 1300);
    ScrollSI1400.contentSize=CGSizeMake(320, 1400);
    ScrollSI1700.contentSize=CGSizeMake(320, 1700);
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
    
        return ((interfaceOrientation == UIInterfaceOrientationPortrait) ||
            (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ) ||
                (interfaceOrientation == UIInterfaceOrientationLandscapeRight ));
 
//        else {
  //         return NO; 
        //}
        
    
                
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



@end
