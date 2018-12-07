//
//  SystemConfigModel.m
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import "SystemConfigModel.h"

@implementation SystemConfigModel

+(BOOL)deviceIsPortrait{
    UIInterfaceOrientation interface = [UIApplication sharedApplication].statusBarOrientation;
    if (interface == UIInterfaceOrientationLandscapeLeft || interface == UIInterfaceOrientationLandscapeRight) {// 横屏
        return NO;
    }
    return YES;
}

+ (NSString *)getStringFrom:(NSDictionary*)dict key:(id)key{
    NSString *string = @"";
    if (dict && [dict objectForKey:key]) {
        string = [NSString stringWithFormat:@"%@",[dict objectForKey:key]];
    }
    if (string == nil || [string blankString]) {
        string = @"";
    }
    return string;
}
@end
