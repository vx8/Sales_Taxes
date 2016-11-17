//
//  ReceiptViewController.h
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceiptViewController : UIViewController{
    IBOutlet UITextView *printTextView;
}

@property (nonatomic) NSString *print;

@end
