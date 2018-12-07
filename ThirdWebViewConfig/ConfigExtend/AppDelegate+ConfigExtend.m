//
//  AppDelegate+ConfigExtend.m
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import "AppDelegate+ConfigExtend.h"

@implementation AppDelegate (ConfigExtend)

+(AppDelegate*)sharedDelegate{
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    return appDelegate;
}

@end
