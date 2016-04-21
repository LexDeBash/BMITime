//
//  Employee.h
//  BMITime
//
//  Created by Alexey Efimov on 18.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person

{
    int employeeID;
    NSMutableSet *assets;
}

@property int employeeID;
- (void)addAssetObject:(Asset *)a;
- (unsigned int)valueOfAsset;

@end
