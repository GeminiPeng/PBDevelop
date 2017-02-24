//
//  TableViewController.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/23.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#import "TableViewController.h"
#import "TableViewModel.h"
#import "TableViewDelegate.h"
#import "TableViewDataSource.h"

@interface TableViewController ()

{
    NSMutableArray * totalSource;
    TableViewModel * tableViewModel;
    UITableView * tableView;
    TableViewDelegate * tableViewDelegate;
    TableViewDataSource * tableViewDataSource;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    
    tableViewDelegate = [TableViewDelegate new];
    tableViewDataSource = [TableViewDataSource new];
    tableView.dataSource = tableViewDataSource;
    tableView.delegate = tableViewDelegate;
    
    tableViewModel = [TableViewModel new];
    totalSource = [NSMutableArray array];
    
    
}



@end
