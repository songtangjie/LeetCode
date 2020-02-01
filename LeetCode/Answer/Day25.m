//
//  Day25.m
//  LeetCode
//
//  Created by william on 2020/2/1.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day25.h"

@implementation Day25

/*
* 前序遍历序列化
* 时间复杂度:O(n)，空间复杂度:O(n)
*/
+ (NSMutableString *)serialize:(TreeNode *)root
{
    NSMutableString *str = [NSMutableString string];
    return [self rserialize:root str:str];
}

+ (NSMutableString *)rserialize:(TreeNode *)node str:(NSMutableString *)str
{
    if (!node) {
        [str appendString:@"null,"];
    } else {
        [str appendString:[NSString stringWithFormat:@"%d,",node.val]];
        str = [self rserialize:node.left str:str];
        str = [self rserialize:node.right str:str];
    }
    return str;
}

/*
 * 前序遍历反序列化
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (TreeNode *)deserialize:(NSString *)data
{
    NSArray *arr = [data componentsSeparatedByString:@","];
    NSMutableArray *data_list = [NSMutableArray arrayWithArray:arr];
    return [self rdeserialize:data_list];
}

+ (TreeNode *)rdeserialize:(NSMutableArray<NSString *> *)l
{
    if (!l.firstObject) {
        return nil;
    }
    if ([[l firstObject] isEqualToString:@"null"]) {
        [l removeObjectAtIndex:0];
        return nil;
    }
    
    TreeNode *root = [[TreeNode alloc] initWithVal:[l.firstObject intValue]];
    [l removeObject:l.firstObject];
    root.left = [self rdeserialize:l];
    root.right = [self rdeserialize:l];
    return root;
}

@end
