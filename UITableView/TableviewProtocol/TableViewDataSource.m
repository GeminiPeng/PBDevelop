//
//  TableViewDataSource.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/23.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "TableViewDataSource.h"
#import "CustomTableViewCell.h"
#import "CustomModel.h"

@implementation TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = ((CustomModel *)[_array objectAtIndex:indexPath.row]).title;
    return cell;
}

@end
