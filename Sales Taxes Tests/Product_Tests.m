//
//  Product_Tests.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Product.h"
#import "Basket.h"
#import "Utils.h"
#import "Purchase.h"
@interface Product_Tests : XCTestCase

@end

@implementation Product_Tests {
    Product *prod;
    Utils *utils;
    Basket *basket;
    Purchase *purchase;
}

- (void)setUp {
    [super setUp];
    prod = [[Product alloc]init];
    basket = [[Basket alloc]init];
    utils = [[Utils alloc]init];
    purchase = [[Purchase alloc]init];
    [purchase fillPurchaseWithData:[utils readPurchaseDataFromLocalJSON]];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
-(void)testProductClassExists{
    XCTAssertNotNil(prod, @"Product exists");
}


-(void)testFirstProductFirstBasket{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:0];
    Product *prod1 = (Product *) [bask1.products objectAtIndex:0];
    BOOL equal = [[NSString stringWithFormat:@"%.2f",prod1.totalPrice] isEqualToString:@"12.49"];
    XCTAssertTrue(equal, @"Product number 1 total price is %.2f , should be 12.49", prod1.totalPrice);
}

-(void)testSecondProductFirstBasket{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:0];
    Product *prod2 = (Product *) [bask1.products objectAtIndex:1];
    BOOL equal = [[NSString stringWithFormat:@"%.2f",prod2.totalPrice] isEqualToString:@"16.49"];
    XCTAssertTrue(equal, @"Product number 1 total price is %.2f , should be 16.49", prod2.totalPrice);
}

-(void)testFirstProductSecondBasket{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:1];
    Product *prod2 = (Product *) [bask1.products objectAtIndex:0];
    BOOL equal = [[NSString stringWithFormat:@"%.2f",prod2.totalPrice] isEqualToString:@"10.50"];
    XCTAssertTrue(equal, @"Product number 1 total price is %.2f , should be 10.50", prod2.totalPrice);
}

-(void)testSecondProductSecondBasket{
    Basket *bask1 = (Basket *)[purchase.baskets objectAtIndex:1];
    Product *prod2 = (Product *) [bask1.products objectAtIndex:1];
    BOOL equal = [[NSString stringWithFormat:@"%.2f",prod2.totalPrice] isEqualToString:@"54.65"];
    XCTAssertTrue(equal, @"Product number 1 total price is %.2f , should be 54.65", prod2.totalPrice);
}



@end
