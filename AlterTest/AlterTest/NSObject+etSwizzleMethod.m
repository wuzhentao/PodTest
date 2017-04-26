//
//  NSObject+etSwizzleMethod.m
//  LJEventTracting
//
//  Created by Sen on 2016/12/19.
//  Copyright © 2016年 Lianjia. All rights reserved.
//

#import "NSObject+etSwizzleMethod.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation NSObject (etSwizzleMethod)

+ (BOOL)et_swizzleMethod:(SEL)originalSelector withMethod:(SEL)newSelector {
    Method origMethod = class_getInstanceMethod(self, originalSelector);
    if (!origMethod) {
        NSLog(@"origMethod为nil，返回NO");
        return NO;
    }
    
    Method altMethod = class_getInstanceMethod(self, newSelector);
    if (!altMethod) {
        NSLog(@"altMethod为nil，返回NO");
        return NO;
    }
    
    class_addMethod(self,
                    originalSelector,
                    class_getMethodImplementation(self, originalSelector),
                    method_getTypeEncoding(origMethod));
    class_addMethod(self,
                    newSelector,
                    class_getMethodImplementation(self, newSelector),
                    method_getTypeEncoding(altMethod));
    
    method_exchangeImplementations(class_getInstanceMethod(self, originalSelector), class_getInstanceMethod(self, newSelector));
    return YES;
}

+ (BOOL)et_swizzleClassMethod:(SEL)originalSelector withClassMethod:(SEL)newSelector {
    return [object_getClass((id)self) et_swizzleMethod:originalSelector withMethod:newSelector];
}

@end
