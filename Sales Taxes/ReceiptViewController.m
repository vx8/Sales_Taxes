//
//  ReceiptViewController.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import "ReceiptViewController.h"

@interface ReceiptViewController ()

@end

@implementation ReceiptViewController

@synthesize print;

- (void)viewDidLoad {
    [super viewDidLoad];
    [printTextView setText:print];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
