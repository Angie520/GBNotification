//
//  TwoViewController.m
//  GBNotification
//
//  Created by Angie on 2018/9/14.
//  Copyright © 2018年 Angie. All rights reserved.
//

#import "TwoViewController.h"
#import "GBNotificationCenter.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)postNotificationClick:(UIButton *)sender {
    [[GBNotificationCenter defaultCenter] postNotificationName:@"MyNotification" object:nil];
}

@end
