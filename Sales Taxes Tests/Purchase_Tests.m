//
//  Purchase_Tests.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Purchase.h"
#import "Utils.h"
@interface Purchase_Tests : XCTestCase

@end

@implementation Purchase_Tests{

    Purchase *purchase;
    Utils *utils;

}

- (void)setUp {
    [super setUp];
    purchase = [[Purchase alloc]init];
    utils = [[Utils alloc]init];
    [purchase fillPurchaseWithData:[utils readPurchaseDataFromLocalJSON]];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testPurchaseClassExists{
    XCTAssertNotNil(purchase, @"Purchase exists");
}

-(void)testPurchaseArrayCount{
    XCTAssertTrue([purchase.baskets count]==3, @"Purchase contains 3 baskets");
}
@end
