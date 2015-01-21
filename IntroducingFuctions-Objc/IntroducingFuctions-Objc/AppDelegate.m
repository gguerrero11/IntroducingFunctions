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
    // Declare and set a variable called myName to your name
    NSString *myName = @"Gabe";
    // before you call printIntroductions call countDownTillIntroduction and pass in 4
    [self countDownTillIntroduction:4];
    
    // call printIntroductions: and pass in 'myName' as an argument
    [self printIntroductions:myName];
    
    /*
     You should see it print
     "4 days left until introductions",
     "3 days left until introductions", 
     "2 days left until introductions",
     "1 days left until introductions",
     and then it should print "The time has come" and
     "My name is Gabe
     Gabe to moushimasu"
     
     */
    
    
    return YES;
}

- (void)printIntroductions:(NSString *)name {
    
    // Declare two more string variables introduction and japaneseIntroduction both with an NSString type
    NSString *introduction;
    NSString *japaneseIntroduction;
    
    //Set japanese introduction using stringByAppendingString instance method by appending " to moushimasu"
    introduction = [NSString stringWithFormat:@"My name is %@", name];
    japaneseIntroduction = [name stringByAppendingString:@" to moushimasu"];
    
    //Print introduction and japaneseIntroduction
    NSLog(@"%@ \n%@", introduction, japaneseIntroduction);
    
}


// Step 4: Recurse through a function

- (void)countDownTillIntroduction:(int)numberOfDays {
    // Check to see if the numberOfDays is 0
    if(numberOfDays == 0) {
        // If the number of days is 0, it should print "The time has come"
        NSLog(@"The time has come");
    } else {
        // If numberOfDays is not 0
        // It should print "[numberOfDays] days left until introductions"
        NSLog(@"%d days left until introductions", numberOfDays);
        // Declare and set a variable oneLessDay and set it to the numberOfDays - 1
        int oneLessDay = numberOfDays - 1;
        // Call countDownTillIntroduction and pass in oneLessDay
        [self countDownTillIntroduction:oneLessDay];
    
    }
}



@end
