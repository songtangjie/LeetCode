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
#import "Day15.h"
#import "Day16.h"
#import "Day17.h"
#import "Day18.h"
#import "Day19.h"
#import "Day20.h"
#import "Day21.h"
#import "Day22.h"
#import "Day23.h"
#import "Day24.h"

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
//    [self testDay14];
//    [self testDay15];
//    [self testDay16];
//    [self testDay17];
//    [self testDay18];
//    [self testDay19];
//    [self testDay20];
//    [self testDay21];
//    [self testDay22];
//    [self testDay23];
    [self testDay24];
}

- (void)testDay01
{
    NSLog(@"result1 is %d.",[Day01 evalRPN:@[@"2", @"1", @"+", @"3", @"*"]]);
    NSLog(@"result2 is %d.",[Day01 evalRPN:@[@"4", @"13", @"5", @"/", @"+"]]);
    NSLog(@"result3 is %d.",[Day01 evalRPN:@[@"10", @"6", @"9", @"3", @"+", @"-11", @"*", @"/", @"*", @"17", @"+", @"5", @"+"]]);
}

- (void)testDay02
{
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
    ListNode *resutl = [Day02 mergeTwoLists2:node11 listNode:node21];
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
    ListNode *result = [Day03 mergeKLists4:array];
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

    NSLog(@"sum = %d",[Day05 maxPathSum:root]);
}

- (void)testDay06
{
    Day06 *day06 = [Day06 new];
    
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
    NSArray *arr = @[@(1),@(2),@(3),@(1)];
//    NSArray *arr = @[@(2),@(7),@(9),@(3),@(1)];
    NSLog(@"result is %d", [Day07 rob:arr]);
}

- (void)testDay08
{
    NSArray *arr = @[@(1),@(1),@(1),@(2),@(2),@(3),];
    
    NSArray *result = [Day08 topKFrequent:arr k:2];
    for (NSNumber *num in result) {
        NSLog(@"%@", num);
    }
}

- (void)testDay09
{
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
    
    NSLog([Day09 isValidSudoku:arr1] ? @"Yes" : @"No");
}

- (void)testDay10
{
    [Day10 palindrome3:@"cbbd"];
}

- (void)testDay11
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(1),@(5),@(1),@(1),@(6),@(4), nil];
    [Day11 wiggleSort2:array];
}

- (void)testDay12
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(1),@(3),@(4),@(2),@(2), nil];
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(3),@(1),@(3),@(4),@(2), nil];
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(1),@(1), nil];
    NSLog(@"重复数字是%d",[Day12 findDuplicate3:array]);
}

- (void)testDay13
{
    NSArray *array = @[
      @[@1,   @4,  @7, @11, @15],
      @[@2,   @5,  @8, @12, @19],
      @[@3,   @6,  @9, @16, @22],
      @[@10, @13, @14, @17, @24],
      @[@18, @21, @23, @26, @30]
    ];
    
    NSLog(@"是否有值%d", [Day13 searchMatrix:array target:20]);
}

- (void)testDay14
{
    NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@1,@2,@3,@0,@0,@0,@0,@0, nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@1,@1,@2,@5,@6, nil];
    [Day14 merge1:array1 m:3 num2:array2 n:5];
}

- (void)testDay15
{ 
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@3,@4,@5,@1,@2, nil];
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@2,@2,@2,@0,@1, nil];
    NSLog(@"最小值是%d",[Day15 findMin:array]);
}

- (void)testDay16
{
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@3,@4,@5,@1,@2, nil];
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@3,@1,@2,@4, nil];
    NSLog(@"%@",[Day16 sortArrayByParity:array]);
}

- (void)testDay17
{
    ListNode *head = [[ListNode alloc]initWithVal:1];
    ListNode *node2 = [[ListNode alloc]initWithVal:2];
    head.next = node2;
    ListNode *node3 = [[ListNode alloc]initWithVal:3];
    node2.next = node3;
    ListNode *node4 = [[ListNode alloc]initWithVal:4];
    node3.next = node4;
    ListNode *node5 = [[ListNode alloc]initWithVal:5];
    node4.next = node5;

    ListNode *newHead = [Day17 removeNthFromEnd:head n:2];
    while (newHead) {
        NSLog(@"%d",newHead.val);
        newHead = newHead.next;
    }
}

- (void)testDay18
{
    //树
    TreeNode *tree1 = [[TreeNode alloc]initWithVal:3];
    TreeNode *tree1Left = [[TreeNode alloc]initWithVal:4];
    tree1.left = tree1Left;
    TreeNode *tree1Right = [[TreeNode alloc]initWithVal:5];
    tree1.right = tree1Right;
    TreeNode *tree1LeftL = [[TreeNode alloc]initWithVal:1];
    tree1Left.left = tree1LeftL;
    TreeNode *tree1LeftR = [[TreeNode alloc]initWithVal:2];
    tree1Left.right = tree1LeftR;
    TreeNode *tree1LeftRL = [[TreeNode alloc]initWithVal:0];
    tree1LeftR.left = tree1LeftRL;
    
    TreeNode *tree2 = [[TreeNode alloc]initWithVal:4];
    TreeNode *tree2Left = [[TreeNode alloc]initWithVal:1];
    tree2.left = tree2Left;
    TreeNode *tree2Right = [[TreeNode alloc]initWithVal:2];
    tree2.right = tree2Right;

    NSLog(@"是否包含子树:%d",[Day18 isSubtree:tree1 t:tree2]);
}

- (void)testDay19
{
    ListNode *head = [[ListNode alloc]initWithVal:1];
    ListNode *node2 = [[ListNode alloc]initWithVal:2];
    head.next = node2;
    ListNode *node3 = [[ListNode alloc]initWithVal:3];
    node2.next = node3;
    ListNode *node4 = [[ListNode alloc]initWithVal:3];
    node3.next = node4;
    ListNode *node5 = [[ListNode alloc]initWithVal:4];
    node4.next = node5;
    ListNode *node6 = [[ListNode alloc]initWithVal:4];
    node5.next = node6;
    ListNode *node7 = [[ListNode alloc]initWithVal:5];
    node6.next = node7;

    ListNode *newHead = [Day19 deleteDuplicates:head];
    while (newHead) {
        NSLog(@"%d",newHead.val);
        newHead = newHead.next;
    }
}

- (void)testDay20
{
    NSLog(@"是否包含%d",[Day20 isMatch:@"mississippi" p:@"mis*is*p*."]);
}

- (void)testDay21
{
    //树
//    TreeNode *tree = [[TreeNode alloc]initWithVal:1];
//
//    TreeNode *treeLeft = [[TreeNode alloc]initWithVal:2];
//    tree.left = treeLeft;
//    TreeNode *treeRight = [[TreeNode alloc]initWithVal:2];
//    tree.right = treeRight;
//
//    TreeNode *treeLeftL = [[TreeNode alloc]initWithVal:3];
//    treeLeft.left = treeLeftL;
//    TreeNode *treeLeftR = [[TreeNode alloc]initWithVal:4];
//    treeLeft.right = treeLeftR;
//
//    TreeNode *treeRightL = [[TreeNode alloc]initWithVal:4];
//    treeRight.left = treeRightL;
//    TreeNode *treeRightR = [[TreeNode alloc]initWithVal:3];
//    treeRight.right = treeRightR;
    
    TreeNode *tree = [[TreeNode alloc]initWithVal:1];
    
    TreeNode *treeLeft = [[TreeNode alloc]initWithVal:2];
    tree.left = treeLeft;
    TreeNode *treeRight = [[TreeNode alloc]initWithVal:2];
    tree.right = treeRight;
    
    TreeNode *treeLeftR = [[TreeNode alloc]initWithVal:3];
    treeLeft.right = treeLeftR;
    
    TreeNode *treeRightR = [[TreeNode alloc]initWithVal:3];
    treeRight.right = treeRightR;

    NSLog(@"是否是镜像树:%d",[Day21 isSymmetric:tree]);
}

- (void)testDay22
{
    Day22 *day = [[Day22 alloc] init];
    [day push:-2];
    [day push:0];
    [day push:-3];
    
    [day getMin];
    [day pop];
    [day top];
    [day getMin];
}

- (void)testDay23
{
    Node *head = [[Node alloc]initWithVal:7 next:nil random:nil];
    
    Node *node1 = [[Node alloc]initWithVal:13 next:nil random:nil];
    head.next = node1;
    node1.random = head;
    
    Node *node2 = [[Node alloc]initWithVal:11 next:nil random:nil];
    node1.next = node2;
    
    Node *node3 = [[Node alloc]initWithVal:10 next:nil random:nil];
    node2.next = node3;
    node3.random = node2;
    
    Node *node4 = [[Node alloc]initWithVal:1 next:nil random:nil];
    node3.next = node4;
    node2.random = node4;
    node4.random = head;

    Day23 *day = [Day23 new];
    Node *newHead = [day copyRandomList:head];
    while (newHead) {
        NSLog(@"%d--%@",newHead.val,newHead.random);
        newHead = newHead.next;
    }
}

- (void)testDay24
{
    Node24 *head = [Node24 new];
    head.val = 4;
    
    Node24 *left = [Node24 new];
    left.val = 2;
    head.left = left;
    
    Node24 *right = [Node24 new];
    right.val = 5;
    head.right = right;
    
    Node24 *leftL = [Node24 new];
    leftL.val = 1;
    left.left = leftL;
    
    Node24 *leftR = [Node24 new];
    leftR.val = 3;
    left.right = leftR;

    Day24 *day = [Day24 new];
    Node24 *newHead = [day treeToDoublyList:head];
    while (newHead) {
        NSLog(@"%d",newHead.val);
        newHead = newHead.right;
    }
}

@end
