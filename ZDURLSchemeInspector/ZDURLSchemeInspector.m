//
//  ZDURLSchemeInspector.m
//  ZDURLSchemeInspector
//
//  Created by 0day on 15/3/23.
//  Copyright (c) 2015年 0dayZh. All rights reserved.
//

#import "ZDURLSchemeInspector.h"

#import <MobileCoreServices/MobileCoreServices.h>
#import <objc/runtime.h>
#import <objc/objc.h>

@implementation ZDURLSchemeInspector

+ (BOOL)isURLSchemeHacked:(NSString *)URLScheme {
    NSParameterAssert(URLScheme != nil);
    
    NSArray *who = [self whoCanHandleURLScheme:URLScheme];
    if (who.count > 1) {
        return YES;
    }
    
    return NO;
}

+ (NSArray *)whoCanHandleURLScheme:(NSString *)URLScheme {
    Class LSApplicationWorkspace_class = objc_getClass("LSApplicationWorkspace");
    NSObject *workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    return [workspace performSelector:@selector(applicationsAvailableForHandlingURLScheme:) withObject:URLScheme];
}

@end
