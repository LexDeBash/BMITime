//
//  Person.h
//  BMITime
//
//  Created by Alexey Efimov on 16.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

//Класс Person наследует все переменные экземпляров и методы, определенные в классе NSObject

@interface Person : NSObject {
    
    //Класс содержит две переменные экземпляров
    float heightInMeters;
    int weightInKilos;
}

// Методы, которые будут использоваться для присваивания значений переменных экземпляров
// Можно задавать значения следующих переменных экземпляров

/*
 - (float)heightInMeters;
 - (void)setHeightInMeters:(float)h;
 - (int)weightInKilos;
 - (void)setWeightInKilos:(int)w;
 */

//Другой способ объявления методов (более для меня понятный)
@property float heightInMeters;
@property int weightInKilos;

// Метод для вычисления индекса массы тела (ИМТ)
- (float)bodyMassIndex;

@end
