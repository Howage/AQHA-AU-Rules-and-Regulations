//
//  SectionIVC.h
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 16/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OHAttributedLabel.h"
#import "NSAttributedString+Attributes.h"

@interface SectionIVC : UIViewController{

    IBOutlet UIScrollView *ScollSI1;
    IBOutlet UIScrollView *ScrollSI2;
    IBOutlet UIScrollView *Scroll2500;
    IBOutlet UIScrollView *Scroll2200;
    IBOutlet UIScrollView *ScrollSI5000;
    IBOutlet UIScrollView *ScrollSI5500;
    IBOutlet UIScrollView *ScrollSI1500;
    IBOutlet UIScrollView *ScrollSI6500;
    IBOutlet UIScrollView *ScrollSI7000;
        IBOutlet UIScrollView *ScrollSI7500;
    IBOutlet UIScrollView *ScrollSI8700;
    IBOutlet UIScrollView *ScrollSI8600;
     IBOutlet UIScrollView *ScrollSI8400;
    IBOutlet UIScrollView *ScrollSI13000;
    IBOutlet UIScrollView *ScrollSI800;
    IBOutlet UIScrollView *ScrollSI650;
    IBOutlet UIScrollView *ScrollSI900;
    IBOutlet UIScrollView *ScrollSI1000;
    IBOutlet UIScrollView *ScrollSI1100;
    IBOutlet UIScrollView *ScrollSI1200;
    IBOutlet UIScrollView *ScrollSI11000;
    IBOutlet UIScrollView *ScrollSI4500;
    IBOutlet UIScrollView *ScrollSI4200;
    IBOutlet UIScrollView *ScrollSI3200;
    IBOutlet UIScrollView *ScrollSI4700;
    IBOutlet UIScrollView *ScrollSI4900;
    IBOutlet UIScrollView *ScrollSI1700;
    IBOutlet UIScrollView *ScrollSI1300;
    IBOutlet UIScrollView *ScrollSI1400;
    IBOutlet UISegmentedControl *seg;
    IBOutlet UISegmentedControl *seg1;    
}
@property(retain, nonatomic) IBOutlet OHAttributedLabel* htmlLabel;
@property(retain, nonatomic) IBOutlet OHAttributedLabel* basicMarkupLabel;



    

@end
