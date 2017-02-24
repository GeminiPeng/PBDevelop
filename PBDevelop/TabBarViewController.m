//
//  TabBarViewController.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/21.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)configTabItems {
    
    NSArray *tabBars = self.tabBar.items;
    UITabBarItem *tabBarItem0 = tabBars[0];
    UIImage *image0 = [UIImage imageNamed:@"1copy"];
    image0  = [image0 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [tabBarItem0 setSelectedImage:image0];
    [tabBarItem0 setImage:image0];
    UIImage *select = [UIImage imageNamed:@"tab1"];
    tabBarItem0.selectedImage = [select imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *tabBarItem1 = tabBars[1];
    UIImage *image1 = [UIImage imageNamed:@"2copy"];
    image1  = [image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [tabBarItem1 setSelectedImage:image1];
    [tabBarItem1 setImage:image1];
    UIImage *select1 = [UIImage imageNamed:@"tab2"];
    tabBarItem1.selectedImage = [select1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
