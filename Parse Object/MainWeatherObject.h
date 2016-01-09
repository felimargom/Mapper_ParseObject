//
//  MainWeatherObject.h
//  Parse Object
//
//  Created by Felicitas Martínez Gómez on 09/01/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainWeatherObject : NSObject
@property (nonatomic,strong) NSString *temp;
@property (nonatomic,strong) NSString *pressure;
@property (nonatomic,strong) NSString *humidity;
@property (nonatomic,strong) NSString *temp_min;
@property (nonatomic,strong) NSString *temp_max;
@property (nonatomic,strong) NSString *sea_level;
@property (nonatomic,strong) NSString *grnd_level;

@end
