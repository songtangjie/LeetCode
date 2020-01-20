//
//  Day05.m
//  LeetCode
//
//  Created by william on 2019/9/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day05.h"

static int sum = INT_MIN;

@implementation Day05

/**
 二叉树中的最大路径和
*/
+ (int)maxPathSum:(TreeNode *)root
{
    if (!root) {
        return 0;
    }
    
    return MAX([self nodeValue:root], sum);
}


/// 求出经过该点的左右最大值
+ (int)nodeValue:(TreeNode *)node
{
    if (!node) {
        return 0;
    }
    
    //后序遍历树
    int leftValue = MAX([self nodeValue:node.left], 0);
    int rightValue = MAX([self nodeValue:node.right], 0);
    
    sum = MAX(sum, node.val + leftValue + rightValue);
    return node.val + MAX(leftValue, rightValue);
}

@end
