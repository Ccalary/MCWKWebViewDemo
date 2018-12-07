//
//  SystemConfigModel.h
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SystemConfigModel : NSObject

+(BOOL)deviceIsPortrait;
+ (NSString *)getStringFrom:(NSDictionary*)dict key:(id)key;

@end
