//
//  PresentModalAnimatedTransition.h
//  PresentModal
//
//  Created by lujh on 2018/1/17.
//  Copyright © 2018年 lujh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PresentModalAnimatedTransition : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter=isPresentation) BOOL presentation;

@end
