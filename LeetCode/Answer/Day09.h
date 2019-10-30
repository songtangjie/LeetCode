//
//  Day09.h
//  LeetCode
//
//  Created by william on 2019/10/29.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day09 : NSObject

/**
 判断一个 9x9 的数独是否有效。只需要根据以下规则，验证已经填入的数字是否有效即可。

 数字 1-9 在每一行只能出现一次。
 数字 1-9 在每一列只能出现一次。
 数字 1-9 在每一个以粗实线分隔的 3x3 宫内只能出现一次。
*/
- (BOOL)isValidSudoku:(NSArray<NSArray<NSString *> *> *)board;

@end

NS_ASSUME_NONNULL_END
