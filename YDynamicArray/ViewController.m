//
//  ViewController.m
//  YDynamicArray
//
//  Created by yff on 2016/11/11.
//  Copyright © 2016年 yff. All rights reserved.
//

#import "ViewController.h"
#import "YFFDynamicArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 建一个有100000个元素的数组
    NSArray *array = [[YFFDynamicArray alloc] initWithItemBlock:^id(NSUInteger index) {
        return @(index);
    } count:10000];
    
    NSLog(@"打印第1000个元素---%@",array[1000]);
    // 惰性计算的例子
    NSArray *modelArray = [[YFFDynamicArray alloc] initWithItemBlock:^id(NSUInteger index) {
        return @(index * 2);
    } count:100];
    NSLog(@"第50个元素是---%@",modelArray[50]);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
