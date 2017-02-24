//
//  TableViewDataSource.h
//  PBDevelop
//
//  Created by Pengbo on 2017/2/23.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic,strong)NSArray * array;
@end
