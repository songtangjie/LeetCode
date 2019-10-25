//
//  Day08.m
//  LeetCode
//
//  Created by william on 2019/10/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day08.h"

@implementation Day08

/// 全排序
- (NSArray<NSNumber *> *)topKFrequent:(NSArray<NSNumber *> *)nums k:(int)k
{
    //放map里过滤存储
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSNumber *num in nums) {
        int count = [[dict objectForKey:num] intValue];
        NSNumber *value = [NSNumber numberWithInt:count+1];
        [dict setObject:value forKey:num];
    }
    
    //对map进行从大到小的排序
    NSArray *sortedKeys = [dict keysSortedByValueUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 intValue] > [obj2 intValue];
    }];
    
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:k];
    for (int i = 0; i < k; i++) {
        [result addObject:sortedKeys[i]];
    }
    return result;
}

@end
