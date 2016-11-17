//
//  Purchase.h
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utils.h"
#import "Basket.h"
#import "Utils.h"

@interface Purchase : NSObject{
    Utils *utils;
}

@property (nonatomic, readonly) NSMutableArray *baskets;

-(void)fillPurchaseWithData:(NSArray*)purchaseData;
@end
