//
//  NSDictionary+NSDictionaryToString.m
//  try_7
//
//  Created by Administrator on 15.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSDictionary+NSDictionaryToString.h"

@implementation NSDictionary (NSDictionaryToString)

-(NSString *) toString {
    NSString * result = [[NSString alloc] init];
    NSArray * keys = [self allKeys];
    NSMutableArray * keys_values = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [self count]; i++) {
        NSString * key = [keys objectAtIndex: i]; 
        NSString * value = [self objectForKey: key];
        NSArray * key_value = [[NSArray alloc] initWithObjects:key, value, nil];
        NSString * key_value_string = [key_value componentsJoinedByString:@" => "];
        [keys_values addObject:key_value_string]; 

    }
    result = [keys_values componentsJoinedByString: @"\n"];
    return result;
}

@end
