//
//  GBNotificationCenter.h
//  GBNotification
//
//  Created by Angie on 2018/9/14.
//  Copyright © 2018年 Angie. All rights reserved.
//

/*
 1. GBNotificationCenter 关键的一个类。保存所有需要监听的通知。
 2. - (void)addObserver:(id)observer selector:(SEL)selector name:(NSString *)name object:(id)object
    这个方法是添加通知。将内容转成 GBNotificationModel 保存到数组。用于发起通知使用。
 3. - (void)postNotificationName:(NSString *)notificationName object:(id)object;
    这个方法是发起通知。遍历数组。找出需要发起通知的内容
 */

#import <Foundation/Foundation.h>

@interface GBNotificationCenter : NSObject
+ (instancetype)defaultCenter;
+ (instancetype)sharedNotificationCenter;
- (void)addObserver:(id)observer selector:(SEL)selector name:(NSString *)name object:(id)object;
- (void)postNotificationName:(NSString *)notificationName object:(id)object;
@end
