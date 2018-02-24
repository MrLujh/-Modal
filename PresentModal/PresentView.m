//
//  PresentView.m
//  PresentModal
//
//  Created by lujh on 2018/1/17.
//  Copyright © 2018年 lujh. All rights reserved.
//

#import "PresentView.h"

@implementation PresentView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
       
        [self setupSubViews];
    }
    
    return self;
}

- (void)setupSubViews
{
    self.backgroundColor = [UIColor greenColor];
}
@end
