//
//  RockPaperScissors.h
//  RockPaperScissors
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RockPaperScissors : NSObject

@property (nonatomic, strong) NSString *computerChoice;
@property (nonatomic, strong) UIImage *image;

-(RockPaperScissors *)randomResult;

@end
