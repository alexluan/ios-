//
//  ViewController.m
//  ios架构
//
//  Created by 栾有数 on 16/7/17.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    static char overviewKey;
    NSArray *array =[[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", nil];
    //为了演示的目的，这里使用initWithFormat:来确保字符串可以被销毁
    NSString * overview = [[NSString alloc] initWithFormat:@"%@",@"First three numbers"];
    objc_setAssociatedObject(array, &overviewKey, overview, OBJC_ASSOCIATION_RETAIN);
    
    NSString *associatedObject = (NSString *)objc_getAssociatedObject(array, &overviewKey);
    NSLog(@"associatedObject:%@", associatedObject);
    
    objc_setAssociatedObject(array, &overviewKey, nil, OBJC_ASSOCIATION_ASSIGN);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
