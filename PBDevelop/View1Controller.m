//
//  View1Controller.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/21.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "View1Controller.h"
#import "View3Controller.h"
#import "Nav3Controller.h"
@interface View1Controller ()

@end

@implementation View1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 50);
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)pushAction {
    
    View3Controller * v3 =[[View3Controller alloc]init];
//    Nav3Controller * nav = [Nav3Controller alloc]ini
    [self.navigationController pushViewController:v3 animated:YES];
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
