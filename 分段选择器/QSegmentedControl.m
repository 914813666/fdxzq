//
//  QSegmentedControl.m
//  分段选择器
//
//  Created by qzp on 16/3/15.
//  Copyright © 2016年 qzp. All rights reserved.
//

#import "QSegmentedControl.h"

#define TAG 7777
@interface QSegmentedControl ()

@property (nonatomic, strong) NSMutableArray * buttons;
@end

@implementation QSegmentedControl

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame: frame]) {
     
    }
    
    return self;
}

- (void)setNames:(NSArray *)names {
    _names = names;
    
    NSLog(@"%@",names);
    [self initializeUserInterface];
}


- (void) initializeUserInterface {
    
    CGFloat selfW = CGRectGetWidth(self.bounds);
    CGFloat selfH = CGRectGetHeight(self.bounds);
    
    
    self.clipsToBounds = YES;
    self.layer.cornerRadius = selfH/2;
    
    CGFloat bW = (selfW - 4) / self.names.count;
    CGFloat bH = (selfH - 4);
    
    for (NSInteger i = 0; i < self.names.count; i++) {
        
        UIButton * btn = [[UIButton alloc] init];
        
        btn.frame = CGRectMake( 2 + bW * i,  2,  bW,  bH);
        [btn setTitle: self.names[i] forState: UIControlStateNormal];
        [btn setTitleColor: [UIColor colorWithRed:0.6889 green:0.7137 blue:0.7345 alpha:1.0] forState: UIControlStateNormal];
        [btn setTitleColor: [UIColor whiteColor] forState: UIControlStateSelected];
        btn.titleLabel.font = [UIFont systemFontOfSize: 13];
        btn.tag = TAG + i;
        [btn addTarget: self
                action: @selector(qs_buttonClick:)
      forControlEvents: UIControlEventTouchUpInside];
        
        [self addSubview: btn];
        
    }
    


}

- (void)setClickIndex:(NSInteger)clickIndex {
    if (clickIndex < self.names.count) {
        NSInteger relIndex = clickIndex + TAG;
        
        for (NSInteger i = TAG; i < TAG + self.names.count; i++) {
            UIButton * btn = (UIButton *) [self viewWithTag: i];
            if (i == relIndex ) {
                btn.selected = YES;
            }
            else {
                btn.selected = NO;
              
                
                
            }
            
            [self updateButtonState: btn];
        }
        
        
    }

}

- (void) updateButtonState: (UIButton *) button{
    if (button.selected) {
        button.layer.cornerRadius = CGRectGetHeight(button.bounds)/2;
        button.clipsToBounds = YES;
        button.backgroundColor = self.selectedColor;
    }
    else {
        button.clipsToBounds = NO;
        button.layer.cornerRadius = 0;
        button.backgroundColor = [UIColor clearColor];
    }

}


- (void) qs_buttonClick: (UIButton *) button {

    
    for (NSInteger i = TAG; i < TAG + self.names.count; i++) {
        UIButton * btn = (UIButton *) [self viewWithTag: i];
        if (i == button.tag ) {
            btn.selected = YES;
        }
        else {
            btn.selected = NO;
            
            
        }
        
        [self updateButtonState: btn];
    }

    
    
}

@end
