//
//  MeViewController.m
//  XiwangHealth
//
//  Created by zivInfo on 16/8/2.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSArray *navigationItemArray = [[NSArray alloc]initWithObjects:@"One",@"Two", nil];
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:navigationItemArray];
    segment.frame = CGRectMake(0.0f, 0.0f, 80, 30);
    segment.apportionsSegmentWidthsByContent = YES; //设置各个标签长宽一致
    segment.selectedSegmentIndex = 0;               //设置默认选中下标为0的按钮
    segment.tintColor = [UIColor colorWithRed:154/255.0 green:224/255.0  blue:192/255.0  alpha:1];
    [segment addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segment;
    
    
}

//点击不同分段就会有不同的事件进行相应
-(void)segmentAction:(UISegmentedControl *)sender {
    OneViewController *one = [[OneViewController alloc] init];
    TwoViewController *two = [[TwoViewController alloc] init];

    
    switch (sender.selectedSegmentIndex) {
        case 0:
        {
            [two removeFromParentViewController];
            [self.view addSubview:one.view];

        }
            break;
        case 1:
        {
            [one removeFromParentViewController];
            [self.view addSubview:two.view];
        }
            break;
            
        default:
            break;
    }

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
