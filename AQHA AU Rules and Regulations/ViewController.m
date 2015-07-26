//
//  ViewController.m
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 5/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


//@interface ViewController ()




@implementation ViewController

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event; {

if (event.subtype == UIEventSubtypeMotionShake) {
    [self performSegueWithIdentifier:@"Home" sender:self];
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
   
    {
        if ((interfaceOrientation == UIInterfaceOrientationPortrait) ||
            (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))
            return YES;
        
        return NO;
    }
}

@end