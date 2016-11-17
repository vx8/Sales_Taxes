//
//  Basket.h
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
@interface Basket : NSObject

-(id)initWithData:(NSDictionary*)data;
-(NSString*)getBasketString;

@property (nonatomic, readonly) NSString *basketName;
@property (nonatomic, readonly) float totalSalesTaxes;
@property (nonatomic, readonly) float total;
@property (nonatomic, readonly) NSMutableArray *products;
@end
