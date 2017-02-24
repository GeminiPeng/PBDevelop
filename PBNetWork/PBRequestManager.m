//
//  PBRequestManager.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/20.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "PBRequestManager.h"

#import "AFNetworking.h"


static dispatch_queue_t pb_create_request_queue() {
    static dispatch_queue_t pb_request_queue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pb_request_queue = dispatch_queue_create("s", DISPATCH_QUEUE_SERIAL);
    });
    return pb_request_queue;
}

@interface PBRequestManager ()

@property (nonatomic,strong)NSCache * sessionMCache;

@property (nonatomic,strong)NSCache * tasksCache;
@end

@implementation PBRequestManager

static PBRequestManager * request = nil;

+ (instancetype)shareRequestManager {
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        request = [[self alloc]init];
    });
    
    return request;
}

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)launchRequest:(NSObject *)request {
    
}

- (void)cancelRequest:(NSObject *)request {
    
}

@end
