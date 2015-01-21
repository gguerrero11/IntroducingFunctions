//
//  AppDelegate.h
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// Declare a function calle printIntroductions
// The function should accept an NSString as a parameter called name

  /*!
   * Prints out my name with an introduction.
   * Parameter expects NSString name.
   */
- (void)printIntroductions:(NSString *)name;


// Add a new function called countDownTillIntroduction: that accepts
// an integer called numberofDays as an argument
  /*!
   * Outputs a countdown of the amount of days.
   * Parameter expects int numberOfDays.
   */
- (void)countDownTillIntroduction:(int)numberOfDays;


@end

