//
//  ViewController.m
//  PresentModal
//
//  Created by lujh on 2018/1/17.
//  Copyright © 2018年 lujh. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"
#import "UIViewController+PresentModal.h"
#import "PresentView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.title = @"防京东购物车Modal";
}

- (IBAction)presentModalBtnClick:(UIButton *)sender
{
    PresentViewController *VC = [[PresentViewController alloc] init];
    [self presentSemiModalViewController:VC contentHeight:self.view.frame.size.height shouldDismissPopover:YES completion:nil];
}

@end
