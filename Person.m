//
//  Person.m
//  BMITime
//
//  Created by Alexey Efimov on 16.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
