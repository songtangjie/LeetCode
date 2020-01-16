//
//  ViewController.m
//  LeetCode
//
//  Created by william on 2019/9/22.
//  Copyright © 2019 william. All rights reserved.
//


#import "ViewController.h"
#import "Day01.h"
#import "Day02.h"
#import "ListNode.h"
#import "QuickSort.h"
#import "Day03.h"
#import "Day04.h"
#import "TreeNode.h"
#import "Day05.h"
#import "Day06.h"
#import "Day07.h"
#import "Day08.h"
#import "Day09.h"
#import "Day10.h"
#import "Day11.h"
#import "Day12.h"
#import "Day13.h"
#import "Day14.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self testDay01];
//    [self testDay02];
//    [self testQuickSort];
//    [self testDay03];
//    [self testDay04];
//    [self testDay05];
//    [self testDay06];
//    [self testDay07];
//    [self testDay08];
//    [self testDay09];
//    [self testDay10];
//    [self testDay11];
//    [self testDay12];
//    [self testDay13];
    [self testDay14];
}

- (void)testDay01
{
    Day01 *day01 = [[Day01 alloc]init];
    NSLog(@"result1 is %d.",[day01 evalRPN:@[@"2", @"1", @"+", @"3", @"*"]]);
    NSLog(@"result2 is %d.",[day01 evalRPN:@[@"4", @"13", @"5", @"/", @"+"]]);
    NSLog(@"result3 is %d.",[day01 evalRPN:@[@"10", @"6", @"9", @"3", @"+", @"-11", @"*", @"/", @"*", @"17", @"+", @"5", @"+"]]);
}

- (void)testDay02
{
    Day02 *day02 = [[Day02 alloc]init];
    
    //链表一
    ListNode *node11 = [[ListNode alloc]initWithVal:1];
    ListNode *node12 = [[ListNode alloc]initWithVal:2];
    node11.next = node12;
    ListNode *node13 = [[ListNode alloc]initWithVal:4];
    node12.next = node13;

    //链表二
    ListNode *node21 = [[ListNode alloc]initWithVal:1];
    ListNode *node22 = [[ListNode alloc]initWithVal:3];
    node21.next = node22;
    ListNode *node23 = [[ListNode alloc]initWithVal:4];
    node22.next = node23;

    //打印结果
    ListNode *resutl = [day02 mergeTwoLists2:node11 listNode:node21];
    while (resutl) {
        NSLog(@"val is %d.",resutl.val);
        resutl = resutl.next;
    }
}

- (void)testQuickSort
{
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"6",@"1",@"2",@"9",@"12",@"45",@"21",@"5", nil];
    [QuickSort quickSort:arr low:0 high:7];

    for (NSString *str in arr) {
        NSLog(@"%d-",[str intValue]);
    }
}

- (void)testDay03
{
    Day03 *day03 = [[Day03 alloc]init];
    
    //链表一
    ListNode *node11 = [[ListNode alloc]initWithVal:1];
    ListNode *node12 = [[ListNode alloc]initWithVal:4];
    node11.next = node12;
    ListNode *node13 = [[ListNode alloc]initWithVal:5];
    node12.next = node13;

    //链表二
    ListNode *node21 = [[ListNode alloc]initWithVal:1];
    ListNode *node22 = [[ListNode alloc]initWithVal:3];
    node21.next = node22;
    ListNode *node23 = [[ListNode alloc]initWithVal:4];
    node22.next = node23;

    //链表三
    ListNode *node31 = [[ListNode alloc]initWithVal:2];
    ListNode *node32 = [[ListNode alloc]initWithVal:6];
    node31.next = node32;

    NSMutableArray *array = [NSMutableArray arrayWithObjects:node11,node21,node31, nil];
    ListNode *result = [day03 mergeKLists4:array];
    while (result) {
      NSLog(@"val is %d.",result.val);
      result = result.next;
    }
}

- (void)testDay04
{
    Day04 *day04 = [[Day04 alloc]init];
    
    //树一
    TreeNode *tree1 = [[TreeNode alloc]initWithVal:2];
    TreeNode *tree1Left = [[TreeNode alloc]initWithVal:1];
    tree1.left = tree1Left;
    TreeNode *tree1Right = [[TreeNode alloc]initWithVal:3];
    tree1.right = tree1Right;
    
    //树二
    TreeNode *tree2 = [[TreeNode alloc]initWithVal:5];
    TreeNode *tree2Left = [[TreeNode alloc]initWithVal:1];
    tree2.left = tree2Left;
    TreeNode *tree2Right = [[TreeNode alloc]initWithVal:4];
    tree2.right = tree2Right;
    TreeNode *tree2RightL = [[TreeNode alloc]initWithVal:3];
    tree2Right.left = tree2RightL;
    TreeNode *tree2RightR = [[TreeNode alloc]initWithVal:6];
    tree2Right.right = tree2RightR;

    if ([day04 isValidBST3:tree1]) {
        NSLog(@"Yes.");
    } else {
        NSLog(@"No.");
    }
}

- (void)testDay05
{
    Day05 *day05 = [[Day05 alloc]init];
    
    //树
    TreeNode *root = [[TreeNode alloc]initWithVal:-10];
    TreeNode *rootLeft = [[TreeNode alloc]initWithVal:9];
    root.left = rootLeft;
    TreeNode *rootRight = [[TreeNode alloc]initWithVal:20];
    root.right = rootRight;
    TreeNode *rootRightL = [[TreeNode alloc]initWithVal:15];
    rootRight.left = rootRightL;
    TreeNode *rootRightR = [[TreeNode alloc]initWithVal:7];
    rootRight.right = rootRightR;

    NSLog(@"sum = %d",[day05 maxPathSum:root]);
}

- (void)testDay06
{
    Day06 *day06 = [[Day06 alloc]init];
    
    //树
    TreeNode *root = [[TreeNode alloc]initWithVal:1];
    TreeNode *rootLeft = [[TreeNode alloc]initWithVal:2];
    root.left = rootLeft;
    TreeNode *rootRight = [[TreeNode alloc]initWithVal:5];
    root.right = rootRight;
    TreeNode *rootLeftL = [[TreeNode alloc]initWithVal:3];
    rootLeft.left = rootLeftL;
    TreeNode *rootLeftR = [[TreeNode alloc]initWithVal:4];
    rootLeft.right = rootLeftR;
    TreeNode *rootRightR = [[TreeNode alloc]initWithVal:6];
    rootRight.right = rootRightR;

    [day06 flatten2:root];
}

- (void)testDay07
{
    Day07 *day07 = [[Day07 alloc]init];
    NSArray *arr = @[@(1),@(2),@(3),@(1)];
//    NSArray *arr = @[@(2),@(7),@(9),@(3),@(1)];
    NSLog(@"result is %d", [day07 rob:arr]);
}

- (void)testDay08
{
    Day08 *day08 = [[Day08 alloc]init];
    NSArray *arr = @[@(1),@(1),@(1),@(2),@(2),@(3),];
    
    NSArray *result = [day08 topKFrequent:arr k:2];
    for (NSNumber *num in result) {
        NSLog(@"%@", num);
    }
}

- (void)testDay09
{
    Day09 *day09 = [[Day09 alloc]init];
    NSArray *arr1 =  @[@[@"5",@"3",@".",@".",@"7",@".",@".",@".",@"."],@[@"6",@".",@".",@"1",@"9",@"5",@".",@".",@"."],@[@".",@"9",@"8",@".",@".",@".",@".",@"6",@"."],@[@"8",@".",@".",@".",@"6",@".",@".",@".",@"3"],@[@"4",@".",@".",@"8",@".",@"3",@".",@".",@"1"],@[@"7",@".",@".",@".",@"2",@".",@".",@".",@"6"],@[@".",@"6",@".",@".",@".",@".",@"2",@"8",@"."],@[@".",@".",@".",@"4",@"1",@"9",@".",@".",@"5"],@[@".",@".",@".",@".",@"8",@".",@".",@"7",@"9"]];
    
//    NSArray *arr2 = @[
//        @[@"8",@"3",@".",@".",@"7",@".",@".",@".",@"."],
//        @[@"6",@".",@".",@"1",@"9",@"5",@".",@".",@"."],
//        @[@".",@"9",@"8",@".",@".",@".",@".",@"6",@"."],
//        @[@"8",@".",@".",@".",@"6",@".",@".",@".",@"3"],
//        @[@"4",@".",@".",@"8",@".",@"3",@".",@".",@"1"],
//        @[@"7",@".",@".",@".",@"2",@".",@".",@".",@"6"],
//        @[@".",@"6",@".",@".",@".",@".",@"2",@"8",@"."],
//        @[@".",@".",@".",@"4",@"1",@"9",@".",@".",@"5"],
//        @[@".",@".",@".",@".",@"8",@".",@".",@"7",@"9"]
//    ];
    
    NSLog([day09 isValidSudoku:arr1] ? @"Yes" : @"No");
}

- (void)testDay10
{
    Day10 *day10 = [[Day10 alloc]init];
    [day10 palindrome3:@"cbbd"];
}

- (void)testDay11
{
    Day11 *day = [[Day11 alloc]init];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(1),@(5),@(1),@(1),@(6),@(4), nil];
    [day wiggleSort2:array];
}

- (void)testDay12
{
    Day12 *day = [[Day12 alloc]init];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(1),@(3),@(4),@(2),@(2), nil];
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(3),@(1),@(3),@(4),@(2), nil];
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(1),@(1), nil];
    NSLog(@"重复数字是%d",[day findDuplicate3:array]);
}

- (void)testDay13
{
    Day13 *day = [[Day13 alloc]init];
    
    NSArray *array = @[
      @[@1,   @4,  @7, @11, @15],
      @[@2,   @5,  @8, @12, @19],
      @[@3,   @6,  @9, @16, @22],
      @[@10, @13, @14, @17, @24],
      @[@18, @21, @23, @26, @30]
    ];
    
    NSLog(@"是否有值%d", [day searchMatrix:array target:20]);
}

- (void)testDay14
{
    Day14 *day = [Day14 new];
    
    NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@1,@2,@3,@0,@0,@0,@0,@0, nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@1,@1,@2,@5,@6, nil];
    [day merge1:array1 m:3 num2:array2 n:5];
}


@end
