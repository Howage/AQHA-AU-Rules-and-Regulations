//
//  Quiz.h
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 24/02/13.
//  Copyright (c) 2013 Australian Quarter Horse Association. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface Quiz : NSObject
@interface Quiz : UIViewController {
    
    IBOutlet UIButton *questionOne;
    IBOutlet UIButton *questionTwo;
    IBOutlet UIButton *questionThree;
    IBOutlet UIButton *questionFour;
    IBOutlet UIButton *questionFive;
    IBOutlet UIButton *questionSix;
    IBOutlet UIButton *questionSeven;
    
    IBOutlet UIButton *answerA;
    IBOutlet UIButton *answerB;
    IBOutlet UIButton *answerC;
    IBOutlet UIButton *answerD;
    
    IBOutlet UILabel *question;
    
    IBOutlet UILabel *labelAnswerA;
    IBOutlet UILabel *labelAnswerB;
    IBOutlet UILabel *labelAnswerC;
    IBOutlet UILabel *labelAnswerD;
    
    IBOutlet UILabel *wrongAnswersCounter;
    IBOutlet UILabel *correctAnswersCounter;
    
    IBOutlet UILabel *yourLevel;
    IBOutlet UILabel *correctWrong;
    IBOutlet UILabel *yourPoints;
    
    int wrongAnswers;
    int correctAnswers;
    int questionNumber;
    int points;
    
    int alertviewNumber;
    
    NSTimer *time;
    int timerInt;
    IBOutlet UILabel *yourTime;
    int calculateScore;
    
   
}

- (IBAction)levelSelected:(id)sender;
- (IBAction)answer:(id)sender;
- (IBAction)restart;

@property int correctAnswers;
@property int wrongAnswers;
@property int questionNumber;
@property int points;
@property (nonatomic, retain) NSTimer *time;
@property int timerInt;
@end
