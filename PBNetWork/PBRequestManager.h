//
//  PBRequestManager.h
//  PBDevelop
//
//  Created by Pengbo on 2017/2/20.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PBRequestManager : NSObject

+ (instancetype)shareRequestManager;

- (void)launchRequest:(NSObject *)request;

- (void)cancelRequest:(NSObject *)request;

@end
