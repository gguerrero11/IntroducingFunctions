//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *myName = @"Gabe";
    [self countDownTillIntroduction:4];
    [self printIntroductions:myName];
    return YES;
}

- (void)printIntroductions:(NSString *)name {
    
    NSString *introduction;
    NSString *japaneseIntroduction;
    
    introduction = [NSString stringWithFormat:@"My name is %@", name];
    japaneseIntroduction = [name stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@ \n%@", introduction, japaneseIntroduction);
    
}

- (void)countDownTillIntroduction:(int)numberOfDays {
    
    if(numberOfDays == 0) {
        NSLog(@"The time has come");
    } else {
        NSLog(@"%d days left until introductions", numberOfDays);
        int oneLessDay = numberOfDays - 1;
        [self countDownTillIntroduction:oneLessDay];
    
    }
}

// Define new functions here...



@end
