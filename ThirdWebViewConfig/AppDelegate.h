//
//  AppDelegate.h
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,assign) BOOL isFirstLoad;

@property (nonatomic,assign) AFNetworkReachabilityStatus networkStatus;

@end

