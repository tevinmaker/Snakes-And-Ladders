//
//  GameController.h
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Player.h"

@interface GameController : NSObject

@property (nonatomic) Cell *start;
@property (nonatomic) int boardSize;


-(Cell *)generateBoard;

-(void) playGameWith:(Cell *) board;

@end
