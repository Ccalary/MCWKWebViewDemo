//
//  ConfigNetworkChangedView.h
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConfigNetworkChangedView : NSObject

+(void)showWifiNetworkAlert;

+(void)show3GNetworkAlert;

+(void)showNoNetworkAlert;

+(void)showOtherNetworkAlert;

@end
