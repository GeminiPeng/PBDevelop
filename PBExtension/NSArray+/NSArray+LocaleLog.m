//
//  NSArray+LocaleLog.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/27.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "NSArray+LocaleLog.h"

NS_ASSUME_NONNULL_BEGIN

@implementation NSArray (LocaleLog)

- (NSString *)descriptionWithLocale:(nullable id)locale {
    NSMutableString * strM = [NSMutableString stringWithFormat:@"(\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [strM appendFormat:@"\t%@",obj];
        if (idx != self.count -1) {
            [strM appendFormat:@",\n"];
        }
    }];
    [strM appendString:@"\n)"];
    return strM;
}

@end

NS_ASSUME_NONNULL_END
