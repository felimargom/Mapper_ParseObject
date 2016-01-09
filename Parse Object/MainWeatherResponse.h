//
//  MainWeatherResponse.h
//  Parse Object
//
//  Created by Felicitas Martínez Gómez on 09/01/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainWeatherResponse : NSObject


@property (nonatomic,strong) NSString *cod;
@property (nonatomic,strong) NSMutableArray *mainwather;


@end
