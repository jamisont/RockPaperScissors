//
//  ViewController.m
//  RockPaperScissors
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "RockPaperScissors.h"

@interface ViewController ()

@end

@implementation ViewController

{
    RockPaperScissors *myGame;
    int countWins;
    int countTies;
    int countLosses;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myGame = [[RockPaperScissors alloc] init];
    countLosses = 0;
    countWins = 0;
    countTies = 0;
    
    [self.buttonRockLobster setBackgroundImage:[UIImage imageNamed:@"rocklobster"] forState:UIControlStateNormal];
    [self.buttonPaperTiger setBackgroundImage:[UIImage imageNamed:@"paper_tiger"] forState:UIControlStateNormal];
    [self.buttonScissorsLizard setBackgroundImage:[UIImage imageNamed:@"scissors_lizard"] forState:UIControlStateNormal];
}

- (IBAction)buttonRockLobster:(id)sender {
    RockPaperScissors *computerResult = [myGame randomResult];
    [self compareUserInput:@"Rock Lobster" againstComputerResult:computerResult.computerChoice];
    self.imageComputerChoice.image = computerResult.image;
    [self updateLabel];
}

- (IBAction)buttonPaperTiger:(id)sender {
    RockPaperScissors *computerResult = [myGame randomResult];
    [self compareUserInput:@"Paper Tiger" againstComputerResult:computerResult.computerChoice];
    self.imageComputerChoice.image = computerResult.image;
    [self updateLabel];
}

- (IBAction)buttonScissorsLizard:(id)sender {
    RockPaperScissors *computerResult = [myGame randomResult];
    [self compareUserInput:@"Scissors Lizard" againstComputerResult:computerResult.computerChoice];
    self.imageComputerChoice.image = computerResult.image;
    [self updateLabel];
}



-(void)compareUserInput:(NSString *)userInput againstComputerResult:(NSString *)computerResult
{
    if (userInput == computerResult) {  // all ties
        self.labelResult.text = [NSString stringWithFormat:@"You tied because the computer chose %@!", computerResult];
        countTies++;
    }
    else
    {
        if ([userInput  isEqual: @"Rock Lobster"])  // User has chosen rock
        {
            if ([computerResult  isEqual: @"Scissors Lizard"]) {
                self.labelResult.text = [NSString stringWithFormat:@"You won because the computer chose %@!", computerResult];
                countWins++;
            } else {
                self.labelResult.text = [NSString stringWithFormat:@"You lost... because the computer chose %@!", computerResult];
                countLosses++;
            }
        }
        else if ([userInput  isEqual: @"Paper Tiger"])    // user has chosen paper
        {
            if ([computerResult  isEqual: @"Scissors Lizard"]) {
                self.labelResult.text = [NSString stringWithFormat:@"You lost... because the computer chose %@!", computerResult];
                countLosses++;
            } else {
                self.labelResult.text = [NSString stringWithFormat:@"You won because the computer chose %@!", computerResult];
                countWins++;
            }
        }
        else    // user has chosen scissors
        {
            if ([computerResult  isEqual: @"Rock Lobster"]) {
                self.labelResult.text = [NSString stringWithFormat:@"You lost... because the computer chose %@!", computerResult];
                countLosses++;
            } else {    // computer assigned paper
                self.labelResult.text = [NSString stringWithFormat:@"You won because the computer chose %@!", computerResult];
                countWins++;
            }
        }
    }
}

-(void)updateLabel
{
    self.labelResults.text = [NSString stringWithFormat:@"Wins: %d\nLosses: %d\nTies: %d", countWins, countLosses, countTies];
}

- (IBAction)buttonReset:(id)sender {
    countTies = 0;
    countWins = 0;
    countLosses = 0;
    [self updateLabel];
    self.labelResult.text = @"";
    self.imageComputerChoice.image = NULL;
}


@end
