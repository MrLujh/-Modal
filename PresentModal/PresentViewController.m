
//
//  PresentViewController.m
//  PresentModal
//
//  Created by lujh on 2018/1/17.
//  Copyright © 2018年 lujh. All rights reserved.
//

#import "PresentViewController.h"

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.3];
   
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick)];
    [self.view addGestureRecognizer:tap];
    
    UIView *presentView = [[UIView alloc] init];
    presentView.frame = CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height -200);
    presentView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:presentView];
//    UIButton *dismissBtn = [[UIButton alloc] init];
//    dismissBtn.backgroundColor = [UIColor redColor];
//    [dismissBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [dismissBtn setTitle:@"Dismiss" forState:UIControlStateNormal];
//    [dismissBtn addTarget:self action:@selector(dismissBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    dismissBtn.frame = CGRectMake((self.view.frame.size.width -100)/2.0, 100, 100, 100);
//    [self.view addSubview:dismissBtn];
}

- (void)tapClick
{
   [self dismissViewControllerAnimated:YES completion:nil];
}

@end
