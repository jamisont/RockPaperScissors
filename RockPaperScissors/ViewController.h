//
//  ViewController.h
//  RockPaperScissors
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelResult;
@property (weak, nonatomic) IBOutlet UIImageView *imageComputerChoice;

@property (weak, nonatomic) IBOutlet UIButton *buttonRockLobster;
@property (weak, nonatomic) IBOutlet UIButton *buttonPaperTiger;
@property (weak, nonatomic) IBOutlet UIButton *buttonScissorsLizard;


@property (weak, nonatomic) IBOutlet UILabel *labelResults;

@end

