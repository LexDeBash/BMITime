//
//  Asset.m
//  BMITime
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *)description {
    // Держатель ресурса отличен от  nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assignet to %@>", [self label], [self resaleValue], [self holder]];
    }
    else {
        return [NSString stringWithFormat:@"<%@: $%d unassignet>", [self label], [self resaleValue]];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
