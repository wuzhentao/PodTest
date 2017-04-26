//
//  UIWindow+test.m
//  AlterTest
//
//  Created by wuzhentao on 2017/4/24.
//  Copyright © 2017年 wuzhentao. All rights reserved.
//

#import "UIWindow+test.h"

@implementation UIWindow (test)
- (void)et_sendEvent:(UIEvent *) event {
//    NSSet *set = event.allTouches;
//    UITouch *touch = [set anyObject];
//    
//    NSLog(@"%ld",(long)touch.type);
//    NSArray *ges = touch.window.gestureRecognizers;
//    
//    [ges enumerateObjectsUsingBlock:^(UIGestureRecognizer  * obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"%@",obj.view);
//    }];
//    NSLog(@"%@",touch.gestureRecognizers);
    [self et_sendEvent:event];
}
@end
