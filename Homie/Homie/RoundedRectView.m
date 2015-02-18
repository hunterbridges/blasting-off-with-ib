//
//  RoundedRectView.m
//  Homie
//
//  Created by Hunter Bridges on 2/17/15.
//  Copyright (c) 2015 Jawbone. All rights reserved.
//

#import "RoundedRectView.h"

@implementation RoundedRectView

// Interface Builder uses this when it creates the preview.
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

// UIStoryboard uses this when it runs in your app.
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

// We want to do the same thing in both, so we make this common init
- (void)commonInit {
    self.rectLayer = [[CAShapeLayer alloc] init];
    [self.layer insertSublayer:self.rectLayer atIndex:0];
}

// This is called when Interface Builder draws the preview
- (void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    
    self.rectLayer.fillColor = self.rectColor.CGColor;
}

// This is called when UIStoryboard has finished reading everything from the storyboard file.
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.rectLayer.fillColor = self.rectColor.CGColor;
}

// This is called when our view sets its size
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.rectLayer.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                     cornerRadius:self.cornerRadius].CGPath;
}

@end
