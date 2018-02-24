//
//  UIViewController+PresentModal.m
//  PresentModal
//
//  Created by lujh on 2018/1/17.
//  Copyright © 2018年 lujh. All rights reserved.
//

#import "UIViewController+PresentModal.h"
#import "PresentModalPresentationController.h"
#import "PresentModalTransitioningDelegate.h"
#import <objc/runtime.h>

@implementation UIViewController (PresentModal)
- (void)setStrongSemiModalTransitioningDelegate:(id<UIViewControllerTransitioningDelegate>)strongSemiModalTransitioningDelegate {
    objc_setAssociatedObject(self, @selector(strongSemiModalTransitioningDelegate), strongSemiModalTransitioningDelegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id<UIViewControllerTransitioningDelegate>)strongSemiModalTransitioningDelegate {
    return objc_getAssociatedObject(self, @selector(strongSemiModalTransitioningDelegate));
}

- (void)presentSemiModalViewController:(UIViewController *)contentViewController contentHeight:(CGFloat)contentHeight shouldDismissPopover:(BOOL)shouldDismissPopover completion:(void (^)(void))completion {
    if (self.presentedViewController) { return; }
    contentViewController.modalPresentationStyle = UIModalPresentationCustom;
    contentViewController.preferredContentSize = CGSizeMake(0.0, contentHeight);
    
    PresentModalTransitioningDelegate *transitioningDelegate = [[PresentModalTransitioningDelegate alloc] init];
    contentViewController.transitioningDelegate = transitioningDelegate;
    // Keep strong references.
    contentViewController.strongSemiModalTransitioningDelegate = transitioningDelegate;
    
    PresentModalPresentationController *presentationController = (PresentModalPresentationController *)contentViewController.presentationController;
    presentationController.shouldDismissPopover = shouldDismissPopover;
    
    [self presentViewController:contentViewController animated:YES completion:completion];
}


- (void)presentSemiModalView:(UIView *)contentView contentHeight:(CGFloat)contentHeight shouldDismissPopover:(BOOL)shouldDismissPopover completion:(void (^)(void))completion {
    NSAssert(contentView, @"The contentView cann't be nil.");
    UIViewController *contentViewController = [[UIViewController alloc] init];
    contentViewController.view.backgroundColor = [UIColor clearColor];
    [contentViewController.view addSubview:contentView];
    contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(contentView)]];
    [NSLayoutConstraint activateConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(contentView)]];
    
    [self presentSemiModalViewController:contentViewController contentHeight:contentHeight shouldDismissPopover:shouldDismissPopover completion:completion];
}
@end
