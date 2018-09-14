//
//  GBNotificationModel.h
//  GBNotification
//
//  Created by Angie on 2018/9/14.
//  Copyright © 2018年 Angie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBNotificationModel : NSObject
@property (nonatomic, strong) id observer;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, copy) NSString *notificationName;
@property (nonatomic, strong) id object;
@end
