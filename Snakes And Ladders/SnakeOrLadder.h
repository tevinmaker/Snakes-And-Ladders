//
//  SnakeOrLadder.h
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SnakeOrLadder : NSObject

@property (nonatomic) BOOL isSnake;
@property (nonatomic) BOOL isLadder;
@property (nonatomic) int resultLength;

-(instancetype) initWithDifficulty:(NSString *) difficulty;


@end
