//
//  ViewController.m
//  Sales Taxes
//
//  Created by Matteo on 17/11/2016.
//  Copyright © 2016 Matteo Spreafico. All rights reserved.
//

#import "ViewController.h"
#import "ReceiptViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    test_purchase = [[Purchase alloc]init];
    utils = [[Utils alloc]init];
    [test_purchase fillPurchaseWithData:[utils readPurchaseDataFromLocalJSON]];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)firstReceipt:(id)sender{
    [self performSegueWithIdentifier:@"PrintReceipt" sender:[self getBasket:0]];
}

-(IBAction)secondReceipt:(id)sender{
    [self performSegueWithIdentifier:@"PrintReceipt" sender:[self getBasket:1]];
}

-(IBAction)thirdReceipt:(id)sender{
    [self performSegueWithIdentifier:@"PrintReceipt" sender:[self getBasket:2]];
}



-(NSString*)getBasket:(int)basketNumber{
   Basket *basket = (Basket *)[test_purchase.baskets objectAtIndex:basketNumber];

    return [basket getBasketString];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"PrintReceipt"]) {
        NSString *toPass = (NSString *)sender;
        ReceiptViewController *myVC = [segue destinationViewController];
        myVC.print = toPass;
    }
    
    
}
@end
