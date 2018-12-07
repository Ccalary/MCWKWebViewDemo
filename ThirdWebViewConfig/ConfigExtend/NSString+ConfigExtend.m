//
//  NSString+ConfigExtend.m
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import "NSString+ConfigExtend.h"

@implementation NSString (ConfigExtend)

- (BOOL)blankString{
    if (![self isKindOfClass:[NSString class]] ){
        return  YES;
    }
    if ([self isEqual:[NSNull null]]){
        return  YES;
    }
    if (self == NULL || [self isEqual:nil] || [self isEqual:Nil] || self == nil){
        return  YES;
    }
    if([self isEqualToString:@"(null)"]){
        return  YES;
    }
    if([self isEqualToString:@"<null>"]){
        return  YES;
    }
    if (self.length == 0 || [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0){
        return  YES;
    }
    return NO;
}

@end
