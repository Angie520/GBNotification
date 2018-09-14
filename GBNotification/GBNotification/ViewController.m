//
//  ViewController.m
//  GBNotification
//
//  Created by Angie on 2018/9/14.
//  Copyright © 2018年 Angie. All rights reserved.
//

/*
 实现系统 NSNotificationCenter 功能
 1. 系统是用hash表保存通知内容。这里只是简单实现。所以采用数组。
 2. 首先实现通知中心单例类（GBNotificationCenter）。用来保存所有监听的通知内容(通知信息这里用GBNotificationModel保存)。
 3. 当发起通知时，遍历通知中心（GBNotificationCenter）的数组 找到对应的方法。执行。
 4. 为了可以撤销通知。所以需要保存监听的对象。
 */

#import "ViewController.h"
#import "GBNotificationCenter.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[GBNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationFunc) name:@"MyNotification" object:nil];
    
}

- (IBAction)toTwoVCClick:(UIButton *)sender {
    [self presentViewController:[[TwoViewController alloc] init] animated:YES completion:nil];
}

- (void)notificationFunc {
    NSLog(@"我执行了通知了");
}


@end
