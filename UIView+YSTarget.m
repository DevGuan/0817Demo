//
//  UIView+YSTarget.m
//  NewYoins
//
//  Created by 管复生 on 2017/8/14.
//  Copyright © 2017年 DevGuan. All rights reserved.
//

#import "UIView+YSTarget.h"
#import <objc/runtime.h>
@interface UIView()

@property (nonatomic, assign )id target;
@property (nonatomic, copy )NSString * actionStr;
@end
@implementation UIView (YSTarget)

- (void)setTarget:(id)target
{
    objc_setAssociatedObject(self, @selector(target), target, OBJC_ASSOCIATION_ASSIGN);
}
- (id)target
{
    return objc_getAssociatedObject(self, @selector(target));
}
- (void)setActionStr:(NSString *)actionStr
{
    objc_setAssociatedObject(self, @selector(actionStr), actionStr, OBJC_ASSOCIATION_COPY);
}
- (NSString *)actionStr
{
    return objc_getAssociatedObject(self, @selector(actionStr));
}
- (void)ys_AddTarget:(id)target action:(SEL)action
{
    self.userInteractionEnabled = YES;
    self.target = target;
    self.actionStr = NSStringFromSelector(action);
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    SEL action = NSSelectorFromString(self.actionStr);
    
    if ([self.target respondsToSelector:action]) {
        IMP imp = [self.target methodForSelector:action];
        void (*func) (id,SEL,id) = (void *)imp;
        
        func(self.target , action ,self);
    }
}
@end
