//
//  NSDictionary+JSON.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/28.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

+ (NSDictionary *)p_dictionaryWithJsonString:(NSString *)json {
    NSError * error = nil;
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers | NSJSONReadingAllowFragments error:&error];
    
    if (jsonDict == nil || error) {
        
        return nil;
    }
    return jsonDict;
}

@end
