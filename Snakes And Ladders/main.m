//
//  main.m
//  Snakes And Ladders
//
//  Created by Tevin Maker on 2016-09-11.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        GameController *game = [[GameController alloc] init];
        
        Cell *board = [[Cell alloc]init];
        
        board = [game generateBoard];
        
        [game playGameWith:board];
        
        
    }
    return 0;
}
