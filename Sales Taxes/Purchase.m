//
//  Purchase.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import "Purchase.h"

@implementation Purchase
@synthesize baskets;


-(id)init{
    if (self = [super init]){
        baskets = [[NSMutableArray alloc]init];
        utils = [[Utils alloc]init];
    }

    return self;
}

/// Removes all baskets inside the current purchase and add new baskets based on fetched data
-(void)fillPurchaseWithData:(NSArray*)purchaseData{
    [baskets removeAllObjects];
    for (int i = 0; i< [purchaseData count]; i++){
        Basket *basket = [[Basket alloc]initWithData:[purchaseData objectAtIndex:i]];
        [baskets addObject:basket];
    }
}
@end
