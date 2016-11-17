//
//  Calculator.h
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <Foundation/Foundation.h>


static const int ROUNDING_PRECISION = 20;
static const int IMPORTED_ADDITIONAL_TAX = 5;

@interface Product : NSObject

@property (nonatomic, readonly) BOOL imported;
@property (nonatomic, readonly) NSString * name;
@property (nonatomic, readonly) float price;
@property (nonatomic, readonly) float quantity;
@property (nonatomic, readonly) float tax;
@property (nonatomic, readonly) float totalPrice;
@property (nonatomic, readonly) float salesTaxes;

-(id)initWithData:(NSDictionary*)data;

@end
