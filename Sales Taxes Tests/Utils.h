//
//  Utils.h
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utils : NSObject

-(NSArray *)readPurchaseDataFromLocalJSON;
-(BOOL)isValidJson;

@end
