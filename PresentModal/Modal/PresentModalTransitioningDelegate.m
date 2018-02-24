
//
//  PresentModalTransitioningDelegate.m
//  PresentModal
//
//  Created by lujh on 2018/1/17.
//  Copyright © 2018年 lujh. All rights reserved.
//

#import "PresentModalTransitioningDelegate.h"
#import "PresentModalPresentationController.h"
#import "PresentModalAnimatedTransition.h"

@implementation PresentModalTransitioningDelegate
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {
    return [[PresentModalPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    PresentModalAnimatedTransition *animated = [[PresentModalAnimatedTransition alloc] init];
    animated.presentation = YES;
    return animated;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    PresentModalAnimatedTransition *animated = [[PresentModalAnimatedTransition alloc] init];
    animated.presentation = NO;
    return animated;
}
@end
