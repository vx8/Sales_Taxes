//
//  Utils_Tests.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Utils.h"
@interface Utils_Tests : XCTestCase

@end

@implementation Utils_Tests{

    Utils *utils;

}



- (void)setUp {
    [super setUp];
    
    utils = [[Utils alloc]init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testUtilsClassExists{
    XCTAssertNotNil(utils, @"Util exists");
}

-(void)testJSONexists{
    NSArray *data = [utils readPurchaseDataFromLocalJSON];
    XCTAssertNotNil(data, @"Data exists locally");
}

-(void)testJsonIsValid{
    XCTAssertTrue([utils isValidJson], @"Data is a valid json");
}

@end
