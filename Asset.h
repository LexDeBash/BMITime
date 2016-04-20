//
//  Asset.h
//  BMITime
//
//  Created by Alexey Efimov on 19.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import "Employee.h"

@interface Asset : Employee {
    NSString *label;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
