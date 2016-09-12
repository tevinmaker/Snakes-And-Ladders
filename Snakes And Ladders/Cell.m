//
//  Cell.m
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "Cell.h"

@implementation Cell

-(instancetype) initWithDifficulty:(NSString *) difficulty {
    
    self = [super init];
    if (self) {
        _snakeOrLadder = [[SnakeOrLadder alloc]initWithDifficulty:difficulty];
    }
    
    return self;
}


@end
