//
//  RoundedRectView.h
//  Homie
//
//  Created by Hunter Bridges on 2/17/15.
//  Copyright (c) 2015 Jawbone. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RoundedRectView : UIView

@property (nonatomic, strong) IBInspectable UIColor *rectColor;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic, strong) CAShapeLayer *rectLayer;

@end
