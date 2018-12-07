//
//  ConfigControlView.h
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,ConfigControlStyle) {
    ConfigControlHome = 1000,
    ConfigControlGoBack,
    ConfigControlGoForward,
    ConfigControlRefresh,
    ConfigControlMenu
};

@protocol ConfigControlViewDelegate <NSObject>

@optional

- (void)performOperationWithStyle:(ConfigControlStyle)style;

@end

@interface ConfigControlView : UIView

@property (nonatomic,assign) id<ConfigControlViewDelegate>delegate;

@end
