//
//  Basket.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import "Basket.h"

@implementation Basket
@synthesize products,basketName,total,totalSalesTaxes;

-(id)initWithData:(NSDictionary*)data {
        if (self = [super init]){
        
            basketName = [data objectForKey:@"name"];
            products = [[NSMutableArray alloc]init];
            [self fillBasketWithData:[data objectForKey:@"basket"]];
            
        }
    return self;
}

/// Removes all products inside the basket and add new products based on fetched data
-(void)fillBasketWithData:(NSArray*)basketData{
    [products removeAllObjects];
    for (int i =0; i< [basketData count]; i++){
        Product *product = [[Product alloc]initWithData:[basketData objectAtIndex:i]];
        [products addObject:product];
        total = total+product.totalPrice;
        totalSalesTaxes = totalSalesTaxes+product.salesTaxes;
    }

}

///Returns a string containing details of all the products in this basket
-(NSString*)getBasketString{

    NSMutableString * mutString = [[NSMutableString alloc]init];
    for (int i = 0; i< [products count]; i++){
        Product *prod = (Product *) [products objectAtIndex:i];
        [mutString appendFormat:@"%.0f %@: %.2f \n", prod.quantity, prod.name, prod.totalPrice];
    }
    [mutString appendFormat:@"Sales taxes: %.2f \n", totalSalesTaxes];
    [mutString appendFormat:@"Total : %.2f \n",total];
    
    return mutString;
}
@end
