//
//  UIView+YSTarget.h
//  NewYoins
//
//  Created by 管复生 on 2017/8/14.
//  Copyright © 2017年 DevGuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YSTarget)

- (void)ys_AddTarget:(id)target action:(SEL)action;
@end
