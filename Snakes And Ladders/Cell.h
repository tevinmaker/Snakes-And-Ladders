//
//  Cell.h
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "SnakeOrLadder.h"

@interface Cell : NSObject

@property (nonatomic) Cell *nextCell;
@property (nonatomic) Cell *lastCell;
@property (nonatomic) int cellPosition;
@property (nonatomic) SnakeOrLadder *snakeOrLadder;

-(instancetype) initWithDifficulty:(NSString *) difficulty;

@end
