//
//  Player.m
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "Player.h"
#import "PlayerInput.h"

@implementation Player

-(instancetype) initWithBoard:(Cell*) board {
    self = [super init];
    
    PlayerInput *playerInput = [[PlayerInput alloc]init];
    if (self) {
        _currentCell = board;
        _name = [playerInput inputForPrompt:@"Enter player name:"];
    }
    
    return self;
}

-(instancetype) takeTurn {
    PlayerInput *playerInput = [[PlayerInput alloc]init];
    
    NSMutableString *playersTurn = [self.name mutableCopy];
    [playersTurn appendString:@" rolls a..."];
    
    NSString *playerRoll = [playerInput inputForPrompt:playersTurn];
    
    int roll = [playerRoll integerValue];
    
    for (int i = 0; i < roll; i++) {
        
        self.currentCell = self.currentCell.nextCell;
    }
    
    if (self.currentCell.snakeOrLadder.isSnake) {
        NSLog(@"%@ lands on a snake. Player moves back %i spaces.", self.name, self.currentCell.snakeOrLadder.resultLength);
        for (int length = self.currentCell.snakeOrLadder.resultLength; length > 0; length--) {
            self.currentCell = self.currentCell.lastCell;
        }
    }
    if (self.currentCell.snakeOrLadder.isLadder) {
        NSLog(@"%@ lands on a ladder. Player moves forward %i spaces.", self.name, self.currentCell.snakeOrLadder.resultLength);
        for (int length = self.currentCell.snakeOrLadder.resultLength; length > 0; length--) {
            self.currentCell = self.currentCell.nextCell;
        }
    }
    NSLog(@"%@, finishes turn on block %i.", self.name, self.currentCell.cellPosition);
    return self;
}

-(void) checkWinner {
    if (self.currentCell.nextCell == nil) {
        NSLog(@"%@ IS THE WINNER!!!", self.name);
    }
}

@end
