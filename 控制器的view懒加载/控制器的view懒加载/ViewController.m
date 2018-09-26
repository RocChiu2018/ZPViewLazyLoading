//
//  ViewController.m
//  控制器的view懒加载
//
//  Created by apple on 16/6/22.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
/**
 加载完视图控制器的view就会调用这个方法。
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 在viewDidLoad方法中得到的屏幕尺寸一般不正确，要在视图控制器的view完全显示出来后再打印才正确，所以一般在下面的这个方法中打印。
 */
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.bounds));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
