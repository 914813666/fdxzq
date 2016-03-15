//
//  QSegmentedControl.h
//  分段选择器
//
//  Created by qzp on 16/3/15.
//  Copyright © 2016年 qzp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QSegmentedControl : UIView

@property (nonatomic, strong) NSArray * names;

@property (nonatomic, assign) NSInteger clickIndex;

@property (nonatomic, strong) UIColor * selectedColor;



@end
