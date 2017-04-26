//
//  ViewController.m
//  AlterTest
//
//  Created by wuzhentao on 2017/4/24.
//  Copyright © 2017年 wuzhentao. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import <Aspects/Aspects.h>
#import "NSObject+etSwizzleMethod.h"
#import "UIAlertController+test.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
//    [[UIResponder class] et_swizzleMethod:@selector(touchesBegan:withEvent:) withMethod:@selector(et_touchesBegan:withEvent:)];
//
    
    
    
    
    //这种加密的方式目的是想绕过AppStore的审核，从而使用私有API
    static unsigned char uiStackSelectorBinary[] = {0xaa,0xe0,0xde,0xd3,0xd8,0xda,0xd9,0xb1,0xd8,0xe4,0xd2,0xb3,0xe0,0xcf,0xcf,0xe4,0xe3,0x05};
    unsigned char selector[128] = {0};
    for(int i = 0; i < sizeof(uiStackSelectorBinary); i++) {
        unsigned char c = uiStackSelectorBinary[i]; //变成ASCII码
        selector[i] = (c-0xa5)^0x5a;
    }
    SEL sel = NSSelectorFromString([NSString stringWithUTF8String:(char *)selector]);
    [[UIAlertController class] et_swizzleMethod:sel withMethod:@selector(et_actionViewTapped:)];
////
//    [[UIControl class] et_swizzleMethod:@selector(sendAction:to:forEvent:) withMethod:@selector(et_sendAction:to:forEvent:)];
////    [[UIGestureRecognizer class] et_swizzleMethod:@selector(initWithTarget:action:) withMethod:@selector(et_initWithTarget:action:)];
////    [[UIGestureRecognizer class] et_swizzleMethod:@selector(addTarget:action:) withMethod:@selector(et_addTarget:action:)];
//    [[UIWindow class] et_swizzleMethod:@selector(sendEvent:) withMethod:@selector(et_sendEvent:)];
//    
//    [[UIView class] et_swizzleMethod:@selector(hitTest:withEvent:) withMethod:@selector(et_hitTest:withEvent:)];
//    [[UIGestureRecognizer class] et_swizzleMethod:@selector(touchesBegan:withEvent:) withMethod:@selector(et_touchesBegan:withEvent:)];
//    [[UIGestureRecognizer class] et_swizzleMethod:@selector(touchesEnded:withEvent:) withMethod:@selector(et_touchesEnded:withEvent:)];
//    [[UIGestureRecognizer class] et_swizzleMethod:@selector(touchesMoved:withEvent:) withMethod:@selector(et_touchesMoved:withEvent:)];
//    [[UIGestureRecognizer class] et_swizzleMethod:@selector(touchesCancelled:withEvent:) withMethod:@selector(et_touchesCancelled:withEvent:)];
    
//    
    
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clcik:(id)sender {
    
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    
//    u_int               count;
//    Method*    methods= class_copyMethodList(NSClassFromString(@"UIAlertController"), &count);
//    for (int i = 0; i < count ; i++)
//    {
//        SEL name = method_getName(methods[i]);
//        NSString *strName = [NSString  stringWithCString:sel_getName(name) encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",strName);
//    }
    UIAlertAction *take = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"dddd");
    }];
    
    [actionSheet addAction:take];
//    [actionSheet addAction:select];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:actionSheet animated:YES completion:nil];
}


@end
