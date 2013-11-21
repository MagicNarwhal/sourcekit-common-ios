//
//  SourceKitLogger.m
//  SourceKit
//
//  Created by Tom Poland on 9/24/13.
//  Copyright 2013 Nexage Inc. All rights reserved.
//

#import "SourceKitLogger.h"

// Default setting is SourceKitLogLevelNone.
static SourceKitLogLevel logLevel;

@implementation SourceKitLogger

+ (void)setLogLevel:(SourceKitLogLevel)level
{
    NSArray *levelNames = @[
                            @"none",
                            @"error",
                            @"warning",
                            @"info",
                            @"debug",
                            ];
    
    NSString *levelName = levelNames[level];
    NSLog(@"SourceKit Logger: log level set to %@", levelName);
    logLevel = level;
}

+ (void)error:(NSString *)message
{
    if (logLevel >= SourceKitLogLevelError) {
        NSLog(@"SourceKit: (E) %@", message);
    }
}

+ (void)warning:(NSString *)message
{
    if (logLevel >= SourceKitLogLevelWarning) {
        NSLog(@"SourceKit: (W) %@", message);
    }
}

+ (void)info:(NSString *)message
{
    if (logLevel >= SourceKitLogLevelInfo) {
        NSLog(@"SourceKit: (I) %@", message);
    }
}

+ (void)debug:(NSString *)message
{
    if (logLevel >= SourceKitLogLevelDebug) {
        NSLog(@"SourceKit: (D) %@", message);
    }
}

@end
