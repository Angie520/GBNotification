//
//  GBNotificationCenter.m
//  GBNotification
//
//  Created by Angie on 2018/9/14.
//  Copyright © 2018年 Angie. All rights reserved.
//

#import "GBNotificationCenter.h"
#import "GBNotificationModel.h"

@interface GBNotificationCenter ()
@property (nonatomic, strong) NSMutableArray *observerArray;
@end

@implementation GBNotificationCenter
static GBNotificationCenter * _ntificationCenter = nil;
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ntificationCenter= [super allocWithZone:zone];
    });
    return _ntificationCenter;
}
- (id)copyWithZone:(NSZone *)zone{
    return _ntificationCenter;
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    return _ntificationCenter;
}
+ (instancetype)sharedNotificationCenter{
    return [[self alloc] init];
}
+ (instancetype)defaultCenter {
    return [[self alloc] init];
}

/// 添加通知
- (void)addObserver:(id)observer selector:(SEL)selector name:(NSString *)name object:(id)object {
    GBNotificationModel *model = [[GBNotificationModel alloc] init];
    model.observer = observer;
    model.selector = selector;
    model.notificationName = name;
    model.object = object;
    [self.observerArray addObject:model];
    NSLog(@"添加通知啦");
}

- (void)postNotificationName:(NSString *)notificationName object:(id)object {
    for (GBNotificationModel *model in self.observerArray) {
        if ([model.notificationName isEqualToString:notificationName]) {
            NSLog(@"发送通知啦");
            /// 找到需要发起的通知。调用通知绑定的事件
            [model.observer performSelector:model.selector];
        }
    }
}

- (NSMutableArray *)observerArray {
    if (_observerArray == nil) {
        _observerArray = @[].mutableCopy;
    }
    return _observerArray;
}

@end
