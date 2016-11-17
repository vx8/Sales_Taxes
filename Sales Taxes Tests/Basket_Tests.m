//
//  Basket_Tests.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Basket.h"
#import "Purchase.h"
#import "Utils.h"

@interface Basket_Tests : XCTestCase

@end

@implementation Basket_Tests{
    
    Basket *basket;
    Purchase *purchase;
    Utils *utils;
    
}

- (void)setUp {
    [super setUp];
    
    basket = [[Basket alloc]init];
    purchase = [[Purchase alloc]init];
    utils = [[Utils alloc]init];
    [purchase fillPurchaseWithData:[utils readPurchaseDataFromLocalJSON]];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testBasketClassExists{
    XCTAssertNotNil(basket, @"Basket exists");
}

-(void)testFirstBasketArrayCount{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:0];
    
    XCTAssertTrue([bask1.products count] ==3, @"Basket number 1 contains 3 products");
}

-(void)testSecondBasketArrayCount{
    Basket *bask2 = (Basket *)[purchase.baskets objectAtIndex:1];
    
    XCTAssertTrue([bask2.products count] ==2, @"Basket number 2 contains 2 products ");
}

-(void)testThirdBasketArrayCount{
    Basket *bask3 = (Basket *)[purchase.baskets objectAtIndex:2];
    
    XCTAssertTrue([bask3.products count] ==4, @"Basket number 3 contains 4 products ");
}

-(void)testFirstOutputSalesTaxes{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:0];
    BOOL equal = [[NSString stringWithFormat:@"%.2f",bask1.totalSalesTaxes] isEqualToString:@"1.50"];
    XCTAssertTrue(equal, @"Basket number 1 total taxes is %f , should be 1.50", bask1.totalSalesTaxes);
}

-(void)testSecondOutputSalesTaxes{
    Basket *bask2 = (Basket *)[purchase.baskets objectAtIndex:1];
    
    BOOL equal = [[NSString stringWithFormat:@"%.2f",bask2.totalSalesTaxes] isEqualToString:@"7.65"];
    XCTAssertTrue(equal, @"Basket number 2 total taxes is %f , should be 7.65", bask2.totalSalesTaxes);
}

-(void)testThirdOutputSalesTaxes{
    Basket *bask3 = (Basket *)[purchase.baskets objectAtIndex:2];
    
    BOOL equal = [[NSString stringWithFormat:@"%.2f",bask3.totalSalesTaxes] isEqualToString:@"6.70"];
    XCTAssertTrue(equal, @"Basket number 3 total taxes is %f , should be 6.7", bask3.totalSalesTaxes);
}

-(void)testFirstBasketTotal{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:0];
    
    BOOL equal = [[NSString stringWithFormat:@"%.2f",bask1.total] isEqualToString:@"29.83"];
    XCTAssertTrue(equal, @"Basket number 3 total taxes is %f , should be 29.83", bask1.totalSalesTaxes);
}

-(void)testSecondBasketTotal{
    Basket *bask2 = (Basket *)[purchase.baskets objectAtIndex:1];
    
    BOOL equal = [[NSString stringWithFormat:@"%.2f",bask2.total] isEqualToString:@"65.15"];
    XCTAssertTrue(equal, @"Basket number 3 total taxes is %f , should be 65.15", bask2.totalSalesTaxes);
}

-(void)testThirdBasketTotal{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:2];
    
    BOOL equal = [[NSString stringWithFormat:@"%.2f",bask1.total] isEqualToString:@"74.68"];
    XCTAssertTrue(equal, @"Basket number 3 total taxes is %f , should be 74.68", bask1.totalSalesTaxes);
}

@end
