//
//  Asset.h
//  BMITime
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Employee.h"
@class Employee;

@interface Asset : Employee {
    NSString *label;
    Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property (strong) Employee *holder;
@property unsigned int resaleValue;

@end
