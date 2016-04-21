//
//  Employee.m
//  BMITime
//
//  Created by Alexey Efimov on 18.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (void)addAssetObject:(Asset *)a {
    // Значение assets равно nil?
    if (!assets) {
        // Создание массива
        assets = [[NSMutableSet alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueOfAsset {
    // Суммировние ценности ресурсов
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

//Переопределение индекса массы тела
- (float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAsset]];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}
@end
