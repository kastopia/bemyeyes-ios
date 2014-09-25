//
//  BMEUserLevel.m
//  BeMyEyes
//
//  Created by Tobias DM on 29/09/14.
//  Copyright (c) 2014 Be My Eyes. All rights reserved.
//

#import "BMEUserLevel.h"

@implementation BMEUserLevel

#pragma mark -
#pragma mark Lifecycle

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        _title = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(title))];
        _threshold = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(threshold))];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.title forKey:NSStringFromSelector(@selector(title))];
    [aCoder encodeObject:self.threshold forKey:NSStringFromSelector(@selector(threshold))];
}

- (void)dealloc {
    _title =  nil;
    _threshold = nil;
}

#pragma mark - Public methods

- (NSString *)localizableKeyForTitle {
    if ([self.title isEqualToString:@"beginner"]) {
        return BME_HELPER_MAIN_LEVEL_NEW_HELPER;
    } else if ([self.title isEqualToString:@"rookie"]) {
        return BME_HELPER_MAIN_LEVEL_PROMISING_HELPER;
    }
    return nil;
}

@end
