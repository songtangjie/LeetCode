//
//  Day19.h
//  LeetCode
//
//  Created by william on 2020/1/21.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day19 : NSObject

/*
 * 遍历，找到重复数则直接跳过
 */
+ (ListNode *)deleteDuplicates:(ListNode *)head;

@end

NS_ASSUME_NONNULL_END
