//
//  UIAlertController+test.m
//  AlterTest
//
//  Created by wuzhentao on 2017/4/24.
//  Copyright © 2017年 wuzhentao. All rights reserved.
//

#import "UIAlertController+test.h"

@implementation UIAlertController (test)

- (void)et_actionViewTapped:(id)send {
    __block NSInteger index = -1;
    UIAlertAction *action = [send valueForKey:@"_action"];
    UIAlertController *vc = [send valueForKey:@"selectedTarget"];
    NSArray *actions = [vc valueForKey:@"_actions"];
    [actions enumerateObjectsUsingBlock:^(UIAlertAction  *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj == action) {
            index = idx;
            *stop = YES;
        }
    }];
    [self et_actionViewTapped:send];
}
@end
