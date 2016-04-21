//
//  main.m
//  BMITime
//
//  Created by Alexey Efimov on 16.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание массива объектов Employee
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i<10; i++) {
            
            // Создание экземпляра Emloyee
            Employee *person = [[Employee alloc] init];
            
            // Присваивание значений переменным экземпляра
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            // Включение работника в массив empoyees
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // Создание 10 экземпляров Asset
        for (int i = 0; i<10; i++) {
            
            // Создание экземпляра Asset
            Asset *asset = [[Asset alloc] init];
            
            // Присваивание метки
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // Полчучение случайного числа от 0 до 9 включительно
            NSUInteger randomIndex = random() % [employees count];
            
            // Получение соответствующего работника
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Назначение ресурса работнику
            [randomEmployee addAssetObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAsset" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Givin up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets %@", allAssets);
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAsset > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
    }
    return 0;
}
