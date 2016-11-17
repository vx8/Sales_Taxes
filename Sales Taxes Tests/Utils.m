//
//  Utils.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import "Utils.h"

@implementation Utils


/// Returns an array of the current purchased data
-(NSArray *)readPurchaseDataFromLocalJSON{
    
    if ([self isValidJson]){
        NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Data" ofType:@"json"];
        NSString *stringJson = [[NSString alloc]initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
        NSData * rawData = [stringJson dataUsingEncoding:NSUTF8StringEncoding];
        NSArray *dictArray = [NSJSONSerialization JSONObjectWithData:rawData options:0 error:nil];
        return dictArray;
    }
    else{
        return nil;
    }
}


/// Checks if data.json is in a correct JSON format
-(BOOL)isValidJson{
     NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Data" ofType:@"json"];
    
    if ([NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:kNilOptions error:nil]==nil){
        return NO;
    }
    return YES;

}


@end
