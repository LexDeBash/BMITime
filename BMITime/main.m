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
            
            // Включение экземпляра в массив empoyees
            [employees addObject:person];
        }
        
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
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Givin up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of array");
        employees = nil;
        
        
        /* Старая версия файла maim.m
         
        // Создание экземпляра Person
        Employee *person = [[Employee alloc] init];
        
        // Присваивание значений переменным экземпляра
        [person setHeightInMeters:1.68];
        [person setWeightInKilos:70];
        [person setEmployeeID:15];
        
        // Вызов метода bodyMassIndex
        float bmi = [person bodyMassIndex];
        NSLog(@"Данные по сотруднику с табельным номером %d:", [person employeeID]);
        NSLog(@"Рост: %.2f", [person heightInMeters]);
        NSLog(@"Вес: %d", [person weightInKilos]);
        NSLog(@"Индекс массы тела: %.2f", bmi);
         */
        
        
    }
    return 0;
}
