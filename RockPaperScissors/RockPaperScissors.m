//
//  RockPaperScissors.m
//  RockPaperScissors
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "RockPaperScissors.h"

@implementation RockPaperScissors
{
    RockPaperScissors *rock;
    RockPaperScissors *paper;
    RockPaperScissors *scissors;
}

-(RockPaperScissors *)randomResult
{
    RockPaperScissors *result;
    
    if (!rock)
    {
        rock = [[RockPaperScissors alloc] initWithImage:[UIImage imageNamed:@"rocklobster"] andComputerChoice:@"Rock Lobster"];
    }
    
    if (!paper)
    {
        paper = [[RockPaperScissors alloc] initWithImage:[UIImage imageNamed:@"paper_tiger"] andComputerChoice:@"Paper Tiger"];
    }
    
    if (!scissors)
    {
        scissors = [[RockPaperScissors alloc] initWithImage:[UIImage imageNamed:@"scissors_lizard"] andComputerChoice:@"Scissors Lizard"];
    }
    
    NSArray *gameObjects = @[rock, paper, scissors];
    
    int variableOne = arc4random() % 3;
    
    result = gameObjects[variableOne];
    
    return result;
}

- (instancetype)initWithImage:(UIImage *)image andComputerChoice:(NSString *)computerChoice
{
    self = [super init];
    if (self) {
        self.computerChoice = computerChoice;
        self.image = image;
    }
    return self;
}

@end
