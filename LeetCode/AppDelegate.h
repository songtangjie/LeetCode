//
//  AppDelegate.h
//  LeetCode
//
//  Created by william on 2019/9/22.
//  Copyright © 2019 william. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

