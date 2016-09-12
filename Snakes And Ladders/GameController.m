//
//  GameController.m
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "GameController.h"
#import "PlayerInput.h"
#import "Player.h"

@implementation GameController


-(Cell *)generateBoard{
    
    Cell *home = [[Cell alloc] init];
    
    Cell *cellCursor = home; // primary
    Cell *lastCellCursor = home;
    lastCellCursor.lastCell =home;
    
    PlayerInput *playerInput = [[PlayerInput alloc]init];
    
    NSString *sizeString = [playerInput inputForPrompt:@"How big of a board would you like?"];
    NSString *difficultyString = [playerInput inputForPrompt:@"How difficult would you like your game?"];
    
    self.boardSize = [sizeString integerValue];
    
    
    for (int i = 0; i < (self.boardSize * self.boardSize); i++) {
        
        if (cellCursor != nil) {


            cellCursor.cellPosition = i;
            
            
            // add next cell
            cellCursor.nextCell = [[Cell alloc] initWithDifficulty:difficultyString];
            cellCursor = cellCursor.nextCell;
            
            // point next cell to current cell
            cellCursor.lastCell = lastCellCursor;
            lastCellCursor = cellCursor;
        }
        
    }
    
    return home;
}

-(void) playGameWith:(Cell *) board{
    
    Player *player1 = [[Player alloc]initWithBoard:board];
    
    Player *player2 = [[Player alloc]initWithBoard:board];
    
    
    while ((player1.currentCell != nil) && (player2.currentCell != nil)) {
        
        if (board.nextCell) {
            
            player1 = [player1 takeTurn];
            [player1 checkWinner];
            player2 = [player2 takeTurn];
            [player2 checkWinner];
        }
    }
}





@end
