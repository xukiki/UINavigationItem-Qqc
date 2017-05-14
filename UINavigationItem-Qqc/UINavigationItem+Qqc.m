//
//  UINavigationItem+Qqc.m
//  QqcFramework
//
//  Created by mahailin on 15/8/20.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "UINavigationItem+Qqc.h"
#import "NSArray+Qqc.h"

static const CGFloat kBarButtonItemPadding = 4.0f;

@implementation UINavigationItem (Qqc)

/**
 *  添加左边的UIBarButtonItem
 *
 *  @param leftBarButtonItem UIBarButtonItem实例
 */
- (void)addLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem
{
    UIBarButtonItem *negativeSpacerItem = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil
                                           action:nil];
    
    negativeSpacerItem.width = kBarButtonItemPadding;
    [self setLeftBarButtonItems:[NSArray arrayWithObjects:negativeSpacerItem, leftBarButtonItem, nil]];
}

/**
 *  添加右边的UIBarButtonItem
 *
 *  @param rightBarButtonItem UIBarButtonItem实例
 */
- (void)addRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem
{
    UIBarButtonItem *negativeSpacerItem = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil
                                           action:nil];
    
    negativeSpacerItem.width = kBarButtonItemPadding;
    [self setRightBarButtonItems:[NSArray arrayWithObjects:negativeSpacerItem,rightBarButtonItem, nil]];
}

/**
 *  返回用户自定义的左边item
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem *)userLeftBarButtonItem
{
    if (self.leftBarButtonItems.count > 0)
    {
        return [self.leftBarButtonItems safeGetObjectAtIndex:self.leftBarButtonItems.count - 1];
    }
    
    return self.leftBarButtonItem;
}

/**
 *  返回用户自定义的右边item
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem *)userRightBarButtonItem
{
    if (self.rightBarButtonItems.count > 0)
    {
        return [self.rightBarButtonItems safeGetObjectAtIndex:self.rightBarButtonItems.count - 1];
    }
    
    return self.rightBarButtonItem;
}

@end
