//
//  ConfigControlView.m
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import "ConfigControlView.h"

@interface ConfigControlView ()
{
    UIView *lineView;
    NSMutableArray *buttonsArray;
}

@end

@implementation ConfigControlView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        buttonsArray = [[NSMutableArray alloc] init];
        [self setBackgroundColor:[UIColor whiteColor]];
        [self createSubViews];
    }
    return self;
}

- (void)createSubViews{
    
    NSArray *imageNameArr = @[@"configHome",@"configBack",@"configForword",@"configReload",@"configUtils"];
    NSInteger count = imageNameArr.count;
    CGFloat width = self.frame.size.width/count;
    CGFloat height = 49;
    for (int i = 0;i < count; i++) {
        NSString *normal = [imageNameArr objectAtIndex:i];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(width*i, 0, width, height)];
        [button setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [button setTag: (i+1000)];
        [self addSubview:button];
        [buttonsArray addObject:button];
    }
    
    lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 0.5)];
    [lineView setBackgroundColor:ConfigSixteenColor(0xb4b4b4, 1)];
    [self addSubview:lineView];
}

- (void)buttonAction:(UIButton*)button{
    if (self.delegate && [self.delegate respondsToSelector:@selector(performOperationWithStyle:)]) {
        [self.delegate performOperationWithStyle:button.tag];
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    lineView.frame = CGRectMake(0, 0, self.frame.size.width, 0.5);
    NSInteger count = buttonsArray.count;
    CGFloat width = self.frame.size.width/count;
    CGFloat height = 49;
    [buttonsArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *button = (UIButton*)obj;
        button.frame = CGRectMake(width*idx, 0, width, height);
    }];
}

@end
