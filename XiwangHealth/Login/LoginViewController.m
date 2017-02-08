//
//  LoginViewController.m
//  XiwangHealth
//
//  Created by zivInfo on 16/8/2.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    self.tabBarController.tabBar.hidden = YES;
    
    
    UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startBtn.frame = CGRectMake(30.0, 320.0, 260.0, 45.0);
    [startBtn setBackgroundColor:[UIColor colorWithRed:73.0/255.0 green:189.0/255.0 blue:204.0/255.0 alpha:1.0]];
    startBtn.layer.cornerRadius = 4.0;
    [self.view addSubview:startBtn];
    
    UIButton *startBtns = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startBtns.frame = CGRectMake(1.0, 1.0, 258.0, 43.0);
    [startBtns setBackgroundColor:[UIColor whiteColor]];
    startBtns.layer.cornerRadius = 4.0;
    startBtns.titleLabel.font = [UIFont systemFontOfSize:17.0f];
    [startBtns setTitle:@"登录" forState:UIControlStateNormal];
    [startBtns setTintColor:[UIColor colorWithRed:73.0/255.0 green:189.0/255.0 blue:204.0/255.0 alpha:1.0]];
    [startBtns addTarget:self action:@selector(startClick) forControlEvents:UIControlEventTouchUpInside];
    [startBtn addSubview:startBtns];
    
}

-(void)startClick
{
    [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:APPIsLogin];
    [[NSUserDefaults standardUserDefaults] synchronize];

    //登录成功调用
    [CurAppDelegate RootAction];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
