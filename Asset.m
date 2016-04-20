//
//  Asset.m
//  BMITime
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
