//
//  Calculator.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import "Product.h"

@implementation Product
@synthesize imported, name, price, quantity, tax,totalPrice, salesTaxes;

-(id)initWithData:(NSDictionary*)data {
    
    if (self = [super init]){
        
        imported = [[data objectForKey:@"imported"]boolValue];
        name = [data objectForKey:@"name"];
        price = [[data objectForKey:@"price"]floatValue];
        quantity = [[data objectForKey:@"quantity"]floatValue];
        tax = [[data objectForKey:@"tax"]floatValue];
        salesTaxes = [self calculateProductTaxes];
        totalPrice = [self calculateProductTotalPrice];
        
        
    }
    return self;
}

/// Returns only the tax value of the current product based on current product price, tax and imported status
-(float)calculateProductTaxes{
    
    float totPrice;
    float st;
    
    totPrice = price * quantity;

    if (imported){
        
        //calculating price based on product tax + 5% of imported good sales tax
        
        st = (totPrice * (tax+IMPORTED_ADDITIONAL_TAX))/100;
    }
    else{
        
        //calculating price based on product tax + 5% of imported good sales tax
        
        st = (totPrice * tax)/100;
    }
    
    //rounding sales taxes to upper next .05
    
    st = ceilf( st * ROUNDING_PRECISION)/ROUNDING_PRECISION;
   
    return st;
}

/// Returns product total price based on quantity, unit price and sales taxes

-(float)calculateProductTotalPrice{
    
    return price * quantity +salesTaxes;
    
}

@end
