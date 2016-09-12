//
//  Player.h
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"


@interface Player : NSObject

@property (nonatomic) Cell *currentCell;

@property (nonatomic) BOOL isWinner;

@property (nonatomic) NSString *name;

-(instancetype) initWithBoard:(Cell*) board;

-(instancetype) takeTurn;

-(void) checkWinner;

@end
