//
//  OCMapperConfig.m
//  Parse Object
//
//  Created by Walter Gonzalez Domenzain on 29/11/15.
//  Copyright © 2015 Smartplace. All rights reserved.
//

#import "OCMapperConfig.h"
#import "OCMapper.h"
#import "Declarations.h"

@implementation OCMapperConfig
+ (void)configure {
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Alerts **********************/
    [inCodeMappingProvider mapFromDictionaryKey:@"zones" toPropertyKey:@"zones"
                                 withObjectType:[ZonesObject class] forClass:[ObjectResponse class]];

    
    [inCodeMappingProvider mapFromDictionaryKey:@"weather" toPropertyKey:@"weather"
                                 withObjectType:[WeatherObject class] forClass:[WeatherResponse class]];
   
    /******************* Variable description Weather **********************/
    [inCodeMappingProvider mapFromDictionaryKey:@"description" toPropertyKey:@"description_Weather"
                                 withObjectType:[NSString class] forClass:[WeatherObject class]];
    
    
    [inCodeMappingProvider mapFromDictionaryKey:@"mainweather" toPropertyKey:@"mainweather"
                                 withObjectType:[MainWeatherObject class] forClass:[MainWeatherResponse class]];
    /******************* Variable cod Weather **********************/
    [inCodeMappingProvider mapFromDictionaryKey:@"cod" toPropertyKey:@"cod"
                                 withObjectType:[NSString class] forClass:[MainWeatherObject class]];
    
    
    

}
@end
