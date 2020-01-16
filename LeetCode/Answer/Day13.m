//
//  Day13.m
//  LeetCode
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day13.h"

@implementation Day13

/* 顶点法减少遍历次数【左下角】
 * 时间复杂度:O(m+n)，时间复杂度:O(1)
 */
- (BOOL)searchMatrix:(NSArray<NSArray *> *)matrix target:(int)target
{
    int row = (int)(matrix.count - 1);
    int col = 0;
    
    while (row >= 0 && col < matrix.count) {
        if (target < [matrix[row][col] intValue]) {
            row--;
        } else if (target > [matrix[row][col] intValue]) {
            col++;
        } else {
            return YES;
        }
    }
    
    return NO;
}

/* 顶点法减少遍历次数【右上角】
 * 时间复杂度:O(m+n)，时间复杂度:O(1)
 */
- (BOOL)searchMatrix2:(NSArray<NSArray *> *)matrix target:(int)target
{
    if (matrix.count == 0) {
        return NO;
    }
    
    int row = 0;
    int col = (int)([matrix firstObject].count - 1);
    
    while (row < matrix.count && col >= 0) {
        if (target < [matrix[row][col] intValue]) {
            col--;
        } else if (target > [matrix[row][col] intValue]) {
            row++;
        } else {
            return YES;
        }
    }
    
    return NO;
}

/* 暴力法遍历
* 时间复杂度:O(m*n)，时间复杂度:O(1)
*/
- (BOOL)searchMatrix3:(NSArray<NSArray *> *)matrix target:(int)target
{
    for (int i = 0; i < matrix.count; i++) {
        for (int j = 0; j < matrix[0].count; j++) {
            if ([matrix[i][j] intValue] == target) {
                return YES;
            }
        }
    }
    return NO;
}

@end
