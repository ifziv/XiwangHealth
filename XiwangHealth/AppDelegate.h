//
//  AppDelegate.h
//  XiwangHealth
//
//  Created by zivInfo on 16/8/2.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GuideViewController.h"
#import "RootViewController.h"
#import "LoginViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(void)RootAction;

-(void)LoginAction;

-(void)GuideAction;

@end

