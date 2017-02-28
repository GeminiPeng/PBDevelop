//
//  NSDictionary+LocaleLog.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/27.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "NSDictionary+LocaleLog.h"

NS_ASSUME_NONNULL_BEGIN

@implementation NSDictionary (LocaleLog)

- (NSString *)descriptionWithLocale:(nullable id)locale {
    NSMutableString * strM = [NSMutableString stringWithFormat:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
       
        [strM appendFormat:@"\t%@ = %@;\n",key,obj];
    }];
    
    [strM appendString:@"}"];
    
    return strM;
}

@end


NS_ASSUME_NONNULL_END
