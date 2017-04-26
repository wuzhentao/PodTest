//
//  NSObject+etSwizzleMethod.h
//  LJEventTracting
//
//  Created by Sen on 2016/12/19.
//  Copyright © 2016年 Lianjia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (etSwizzleMethod)

+ (BOOL)et_swizzleMethod:(SEL)originalSelector withMethod:(SEL)newSelector;

+ (BOOL)et_swizzleClassMethod:(SEL)originalSelector withClassMethod:(SEL)newSelector;

@end
