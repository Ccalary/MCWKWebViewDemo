//
//  AppDelegate.m
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import "AppDelegate.h"
#import "ConfigNavigationViewController.h"

#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.isFirstLoad = YES;
    [self startNetworkMonitoring];
    
    MainViewController *rootViewController = [[MainViewController alloc] init];
    ConfigNavigationViewController *nav = [[ConfigNavigationViewController alloc] initWithRootViewController:rootViewController];
    nav.deviceMask = UIInterfaceOrientationMaskPortrait;
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)startNetworkMonitoring{
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    self.networkStatus = manager.networkReachabilityStatus;
    [manager startMonitoring];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkingStatusDidChanged:) name:AFNetworkingReachabilityDidChangeNotification object:nil];
}

- (void)networkingStatusDidChanged:(NSNotification*)info{
    NSDictionary *inforDict = [info userInfo];
    NSString *statusStr = [SystemConfigModel getStringFrom:inforDict key:AFNetworkingReachabilityNotificationStatusItem];
    if (statusStr == nil || [statusStr blankString]) {
        statusStr = [SystemConfigModel getStringFrom:inforDict key:@"LCNetworkingReachabilityNotificationStatusItem"];
    }
    
    NSInteger status   = [statusStr integerValue];
    if (self.isFirstLoad == YES) {
        self.isFirstLoad = NO;
        self.networkStatus = status;
        return;
    }
    
    if (status == self.networkStatus)return;
    
    self.networkStatus = status;
    if (status != AFNetworkReachabilityStatusNotReachable && status != AFNetworkReachabilityStatusUnknown) {
        if (status == AFNetworkReachabilityStatusReachableViaWWAN) {
            [ConfigNetworkChangedView show3GNetworkAlert];
        }else if (status == AFNetworkReachabilityStatusReachableViaWiFi){
            [ConfigNetworkChangedView showWifiNetworkAlert];
        }else{
            [ConfigNetworkChangedView showOtherNetworkAlert];
        }
    }else{
        [ConfigNetworkChangedView showNoNetworkAlert];
    }
}


@end
