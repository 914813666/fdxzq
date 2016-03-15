//
//  ViewController.m
//  分段选择器
//
//  Created by qzp on 16/3/15.
//  Copyright © 2016年 qzp. All rights reserved.
//

#import "ViewController.h"
#import "QSegmentedControl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    QSegmentedControl * seg = [[QSegmentedControl alloc] initWithFrame:
                               CGRectMake(40, 200, 200, 30)];
    seg.backgroundColor = [UIColor colorWithRed:1.0 green:0.2262 blue:0.2182 alpha:1.0];
    seg.names = @[@"小吃",@"游戏",@"天气"];
    seg.selectedColor = [UIColor greenColor];
    seg.clickIndex = 0;

    [self.view addSubview: seg];
    
    
    
    QSegmentedControl * seg2 = [[QSegmentedControl alloc] initWithFrame:
                               CGRectMake(40, 250, 200, 30)];
    seg2.backgroundColor = [UIColor colorWithRed:0.1804 green:0.4078 blue:0.1216 alpha:1.0];
    seg2.names = @[@"小吃",@"游戏",@"天气",@"心情好"];
    seg2.selectedColor = [UIColor colorWithRed:0.2902 green:0.5216 blue:0.0627 alpha:1.0];
    seg2.clickIndex = 2;
    [self.view addSubview: seg2];
    
    
    QSegmentedControl * seg3 = [[QSegmentedControl alloc] initWithFrame:
                                CGRectMake(10, 290, 300, 35)];
    seg3.backgroundColor = [UIColor colorWithRed:0.9082 green:0.9264 blue:0.9317 alpha:1.0];
    seg3.names = @[@"小吃",@"游戏",@"天气",@"食物"];
    seg3.selectedColor = [UIColor colorWithRed:0.9212 green:0.8483 blue:0.6238 alpha:1.0];
    seg3.clickIndex = 2;
    [self.view addSubview: seg3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
