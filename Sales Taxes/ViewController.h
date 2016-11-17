//
//  ViewController.h
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "Basket.h"
#import "Utils.h"
#import "Purchase.h"
#import "Utils.h"

@interface ViewController : UIViewController{

    Purchase *test_purchase;
    Utils *utils;

}
-(IBAction)firstReceipt:(id)sender;
-(IBAction)secondReceipt:(id)sender;
-(IBAction)thirdReceipt:(id)sender;

@end

