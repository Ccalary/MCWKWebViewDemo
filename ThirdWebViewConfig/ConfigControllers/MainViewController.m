//
//  MainViewController.m
//  ThirdWebViewConfig
//
//  Created by Yonger on 2018/8/7.
//  Copyright © 2018年 BOOM. All rights reserved.
//

#import "MainViewController.h"
#import "ConfigContentController.h"
#import "ConfigNavigationViewController.h"

@interface MainViewController ()
{
    UIImageView *backgroundImageView;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    backgroundImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:backgroundImageView];
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    ConfigContentController *rootViewController = [[ConfigContentController alloc] init];
    rootViewController.urlString = @"https://www.baidu.com";
    ConfigNavigationViewController *nav = [[ConfigNavigationViewController alloc] initWithRootViewController:rootViewController];
    nav.deviceMask = UIInterfaceOrientationMaskAll;
    [AppDelegate sharedDelegate].window.rootViewController = nav;
}


@end
