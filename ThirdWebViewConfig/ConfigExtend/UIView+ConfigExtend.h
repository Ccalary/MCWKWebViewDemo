//
//  UIView+ConfigExtend.h
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ConfigExtend)

@property (nonatomic,assign,readonly) CGFloat maxWidth;
@property (nonatomic,assign,readonly) CGFloat maxHeight;

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;

@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;



@end
