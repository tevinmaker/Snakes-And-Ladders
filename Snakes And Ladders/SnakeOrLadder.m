//
//  SnakeOrLadder.m
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "SnakeOrLadder.h"

@implementation SnakeOrLadder

-(instancetype) initWithDifficulty:(NSString *) difficulty{
    
    self = [super init];
    if (self) {
        self.resultLength = 0;
        
        if ([difficulty isEqual:@"easy"]) {
            int i = arc4random_uniform(100);
            if (i < 15) {
                self.isSnake = YES;
                self.resultLength = arc4random_uniform(10) + 1;
            }
            if (i > 74) {
                self.isLadder = YES;
                self.resultLength = arc4random_uniform(12) + 2;
            }
        }
        if ([difficulty isEqual:@"med"]) {
            int i = arc4random_uniform(100);
            if (i < 20) {
                self.isSnake = YES;
                self.resultLength = arc4random_uniform(10) + 2;
            }
            if (i > 79) {
                self.isLadder = YES;
                self.resultLength = arc4random_uniform(10) + 2;
            }
        }
        if ([difficulty isEqual:@"hard"]) {
            int i = arc4random_uniform(100);
            if (i < 25) {
                self.isSnake = YES;
                self.resultLength = arc4random_uniform(12) + 2;
            }
            if (i > 84) {
                self.isLadder = YES;
                self.resultLength = arc4random_uniform(10) + 1;
            }
        }
    }
    
    
    
    return self;
}

@end
