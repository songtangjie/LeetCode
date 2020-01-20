//
//  Day09.m
//  LeetCode
//
//  Created by william on 2019/10/29.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day09.h"

@implementation Day09

//使用Set数据类型
+ (BOOL)isValidSudoku:(NSArray<NSArray<NSString *> *> *)board
{
    NSMutableArray<NSMutableSet *> *rows = [NSMutableArray arrayWithCapacity:9];
    NSMutableArray<NSMutableSet *> *cols = [NSMutableArray arrayWithCapacity:9];
    NSMutableArray<NSMutableSet *> *boxes = [NSMutableArray arrayWithCapacity:9];
    
    for (int i = 0; i < 9; i++) {
        rows[i] = [NSMutableSet set];
        cols[i] = [NSMutableSet set];
        boxes[i] = [NSMutableSet set];
    }
    
    for (int row = 0; row < board.count; row++) {
        NSArray *rowData = board[row];
        for (int col = 0; col < rowData.count; col++) {
            NSString *numStr = rowData[col];
            if ([numStr isEqualToString:@"."]) {
                continue;
            }
            
            if ([rows[row] containsObject:numStr]) {
                return NO;
            }
            if ([cols[col] containsObject:numStr]) {
                return NO;
            }
            
            int boxesIndex = (row / 3) * 3 + (col / 3);
            if ([boxes[boxesIndex] containsObject:numStr]) {
                return NO;
            }
            
            [rows[row] addObject:numStr];
            [cols[col] addObject:numStr];
            [boxes[boxesIndex] addObject:numStr];
        }
    }
    
    return YES;
}

@end
