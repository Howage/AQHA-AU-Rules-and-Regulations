//
//  Quiz.m
//  AQHA AU Rules and Regulations
//
//  Created by Heather McQueen on 24/02/13.
//  Copyright (c) 2013 Australian Quarter Horse Association. All rights reserved.
//

#import "Quiz.h"

@implementation Quiz
@synthesize questionNumber, correctAnswers, wrongAnswers, points, time, timerInt;

- (void)updateLabels {
    correctAnswersCounter.text = [[NSString alloc] initWithFormat:@"%d", correctAnswers];
    wrongAnswersCounter.text = [[NSString alloc] initWithFormat:@"%d", wrongAnswers];
    yourPoints.text = [[NSString alloc] initWithFormat:@"%d", points];
    yourTime.text = [[NSString alloc] initWithFormat:@"Your time... %d", timerInt];
}

- (void)refresh {
    answerA.hidden = NO;
    answerB.hidden = NO;
    answerC.hidden = NO;
    answerD.hidden = NO;
    
    correctWrong.text = @"Correct / Wrong";
    
}

- (void)endOfGame {
    if (questionOne.hidden == YES) {
        if (questionTwo.hidden == YES) {
            if (questionThree.hidden == YES) {
                if (questionFour.hidden == YES) {
                    if (questionFive.hidden == YES) {
                        if (questionSix.hidden == YES) {
                            if (questionSeven.hidden == YES) {
                                NSString *endMessage = [[NSString alloc] initWithFormat:@"Points: %d/700   |    %d correct answers    %d wrong answers", points, correctAnswers, wrongAnswers];
                                UIAlertView *end = [[UIAlertView alloc] initWithTitle:@"End of game" message:endMessage delegate:self cancelButtonTitle:nil otherButtonTitles:@"Restart quiz", nil];
                                [end show];
                            }
                        }
                    }
                }
            }
        }
    }
}


- (IBAction)levelSelected:(id)sender {
    questionOne.enabled = NO;
    questionTwo.enabled = NO;
    questionThree.enabled = NO;
    questionFour.enabled = NO;
    questionFive.enabled = NO;
    questionSix.enabled = NO;
    questionSeven.enabled = NO;
    
    if (timerInt > 0) {
        [time invalidate];
        [self setTimerInt:0];
        time = [NSTimer scheduledTimerWithTimeInterval:(0.75/1.0) target:self selector:@selector(alertVoid) userInfo:nil repeats:YES];  
    } else {
        time = [NSTimer scheduledTimerWithTimeInterval:(0.75/1.0) target:self selector:@selector(alertVoid) userInfo:nil repeats:YES];  
    }
    
    if ([sender tag] == 1) {
        question.text = @"What is an acceptable name for a horse?";
        labelAnswerA.text = @"A name not exceeding 25 characters";
        labelAnswerB.text = @"A name not exceeding 15 characters";
        labelAnswerC.text = @"A name not exceeding 45 characters";
        labelAnswerD.text = @"A name not exceeding 100 characters";
        
        [self setQuestionNumber:1];
    }
    if ([sender tag] == 2) {
        question.text = @"What date is considered the horses birthday?";
        labelAnswerA.text = @"2nd March";
        labelAnswerB.text = @"25th September";
        labelAnswerC.text = @"1st August";
        labelAnswerD.text = @"11th November";
        
        [self setQuestionNumber:2];
    }
    if ([sender tag] == 3) {
        question.text = @"In English Equipment, what is the acceptable length of the shank of unrowelled type spurs?";
        labelAnswerA.text = @"Not exceeding 5cm";
        labelAnswerB.text = @"Not exceeding 15cm";
        labelAnswerC.text = @"Not exceeding 2.5cm";
        labelAnswerD.text = @"Not exceeding 4.5cm";
        
        [self setQuestionNumber:3];
    }
    if ([sender tag] == 4) {
        question.text = @"What is the average size of a quarter horse?";
        labelAnswerA.text = @"10 to 12 hands high";
        labelAnswerB.text = @"20 to 25 hands high";
        labelAnswerC.text = @"25 to 30 hands high";
        labelAnswerD.text = @"14 to 16 hands high"; //correct answer
        
        [self setQuestionNumber:4];
    }
    if ([sender tag] == 5) {
        question.text = @"What year was the AQHA formed?";
        labelAnswerA.text = @"1962";
        labelAnswerB.text = @"1967";
        labelAnswerC.text = @"1976";
        labelAnswerD.text = @"1964";
        
        [self setQuestionNumber:5];
    }
    if ([sender tag] == 6) {
        question.text = @"Why is the quarter horse called a quarter horse?";
        labelAnswerA.text = @"Bred to be the fastest over a quarter mile";
        labelAnswerB.text = @"its 1/4th the size of a thoroughbred";
        labelAnswerC.text = @"Originally bought for a quarter in America";
        labelAnswerD.text = @"No correct answer";
        
        [self setQuestionNumber:6];
    }
    if ([sender tag] == 7) {
        question.text = @"Where did the quarter horse originate?";
        labelAnswerA.text = @"Turkey";
        labelAnswerB.text = @"America"; // correct answer
        labelAnswerC.text = @"Australia";
        labelAnswerD.text = @"Asia";
        
        [self setQuestionNumber:7];
    }
    
    [ self performSelector:@selector(buttonEnable) withObject:nil afterDelay:1.1f];
    
    NSString *level = [sender titleForState:UIControlStateNormal];
    yourLevel.text = level;
    [self updateLabels];
    [self refresh];
}

- (void)buttonEnable {
    questionOne.enabled = YES;
    questionTwo.enabled = YES;
    questionThree.enabled = YES;
    questionFour.enabled = YES;
    questionFive.enabled = YES;
    questionSix.enabled = YES;
    questionSeven.enabled = YES;
}

- (void)alertVoid {
    timerInt += 1;
    yourTime.text = [[NSString alloc] initWithFormat:@"Your time... %d", timerInt];
}


- (void)correctAnswer {
    [self setCorrectAnswers:[self correctAnswers] + 1];
    calculateScore = 100 / (timerInt + 1);
    correctWrong.text = [[NSString alloc] initWithFormat:@"Correct! Points +%d", calculateScore];
    [self setPoints:[self points] + calculateScore];
    
    if (questionNumber == 1) {
        questionOne.hidden = YES;
    }
    if (questionNumber == 2) {
        questionTwo.hidden = YES;
    }
    if (questionNumber == 3) {
        questionThree.hidden = YES;
    }
    if (questionNumber == 4) {
        questionFour.hidden = YES;
    }
    if (questionNumber == 5) {
        questionFive.hidden = YES;
    }
    if (questionNumber == 6) {
        questionSix.hidden = YES;
    }
    if (questionNumber == 7) {
        questionSeven.hidden = YES;
    }
    answerA.hidden = YES;
    answerB.hidden = YES;
    answerC.hidden = YES;
    answerD.hidden = YES;
    
    [time invalidate];
    [self updateLabels];
    [self endOfGame];
}

- (void)wrongAnswer {
    [self setWrongAnswers:[self wrongAnswers] + 1];
    [self setPoints:[self points] - 50];
    correctWrong.text = @"Wrong... -50 points :(";
}

- (IBAction)answer:(id)sender {
    if ([sender tag] == 1) {
        // Answer A
        
        // Question 1
        if (questionNumber == 1) {
            [self correctAnswer];
        }
        
        // Question 2
        if (questionNumber == 2) {
            [self wrongAnswer];
        }
        // Question 3
        if (questionNumber == 3) {
            [self wrongAnswer];
        }
        // Question 4
        if (questionNumber == 4) {
            [self wrongAnswer];
        }
        // Question 5
        if (questionNumber == 5) {
            [self wrongAnswer];
        }
        // Question 6
        if (questionNumber == 6) {
            [self correctAnswer];
        }
        // Question 7
        if (questionNumber == 7) {
            [self wrongAnswer];
        }
    }
    
    if ([sender tag] == 2) {
        // Answer B
        
        //Question 1
        if (questionNumber == 1) {
            [self wrongAnswer];
        }
        
        // Question 2
        if (questionNumber == 2) {
            [self wrongAnswer];
        }
        // Question 3
        if (questionNumber == 3) {
            [self wrongAnswer];
        }
        // Question 4
        if (questionNumber == 4) {
            [self wrongAnswer];
        }
        // Question 5
        if (questionNumber == 5) {
            [self wrongAnswer];
        }
        // Question 6
        if (questionNumber == 6) {
            [self wrongAnswer];
        }
        // Question 7
        if (questionNumber == 7) {
            [self correctAnswer];
        }
    }
    
    if ([sender tag] == 3) {
        // Answer C
        
        // Question 1
        if (questionNumber == 1) {
            [self wrongAnswer];
        }
        
        // Question 2
        if (questionNumber == 2) {
            [self correctAnswer];
        }
        // Question 3
        if (questionNumber == 3) {
            [self correctAnswer];
        }
        // Question 4
        if (questionNumber == 4) {
            [self wrongAnswer];
        }
        // Question 5
        if (questionNumber == 5) {
            [self wrongAnswer];
        }
        // Question 6
        if (questionNumber == 6) {
            [self wrongAnswer];
        }
        // Question 7
        if (questionNumber == 7) {
            [self wrongAnswer];
        }
    }
    
    if ([sender tag] == 4) {
        // Answer D
        
        // Question 1
        if (questionNumber == 1) {
            [self wrongAnswer];
        }
        
        // Question 2
        if (questionNumber == 2) {
            [self wrongAnswer];
        }// Question 3
        if (questionNumber == 3) {
            [self wrongAnswer];
        }
        // Question 4
        if (questionNumber == 4) {
            [self correctAnswer];
        }
        // Question 5
        if (questionNumber == 5) {
            [self correctAnswer];
        }
        // Question 6
        if (questionNumber == 6) {
            [self wrongAnswer];
        }
        // Question 7
        if (questionNumber == 7) {
            [self wrongAnswer];
        }
    }
    
    NSString *answerChosen = [sender titleForState:UIControlStateNormal];
    NSLog(@"Answer chosen = %@", answerChosen);
    [self updateLabels];
}

- (IBAction)restart {
    UIAlertView *restartAlert = [[UIAlertView alloc] initWithTitle:@"Are you sure?" message:nil delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes, restart", nil];
    [restartAlert show];
    
    [self updateLabels];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1 || buttonIndex == 0) {
        [time invalidate];
        [self setTimerInt:0];
        [self refresh];
        [self setPoints:0];
        [self setCorrectAnswers:0];
        [self setWrongAnswers:0];
        [self setQuestionNumber:0];
        
        questionOne.hidden = NO;
        questionTwo.hidden = NO;
        questionThree.hidden = NO;
        questionFour.hidden = NO;
        questionFive.hidden = NO;
        questionSix.hidden = NO;
        questionSeven.hidden = NO;
        
        question.text = @"Choose a level";
        labelAnswerA.text = @"";
        labelAnswerB.text = @"";
        labelAnswerC.text = @"";
        labelAnswerD.text = @"";
        [ self updateLabels];
    }
}

@end
