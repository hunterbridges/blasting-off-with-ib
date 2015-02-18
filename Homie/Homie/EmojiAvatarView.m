//
//  EmojiAvatarView.m
//  Homie
//
//  Created by Hunter Bridges on 2/17/15.
//  Copyright (c) 2015 Jawbone. All rights reserved.
//

#import "EmojiAvatarView.h"

@implementation EmojiAvatarView

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
    self.ovalLayer = [[CAShapeLayer alloc] init];
    [self.layer addSublayer:self.ovalLayer];
    
    self.emojiLabel = [[UILabel alloc] init];
    self.emojiLabel.minimumScaleFactor = 0.0;
    self.emojiLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.emojiLabel];
}

// This is called when Interface Builder draws the preview
- (void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    
    self.ovalLayer.fillColor = self.ovalColor.CGColor;
    self.emojiLabel.text = self.emoji;
}

// This is called when UIStoryboard has finished reading everything from the storyboard file.
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.ovalLayer.fillColor = self.ovalColor.CGColor;
    self.emojiLabel.text = self.emoji;
}

// This is called when our view sets its size
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.ovalLayer.path = [UIBezierPath bezierPathWithOvalInRect:self.bounds].CGPath;
    
    self.emojiLabel.frame = self.bounds;
    self.emojiLabel.font = [UIFont systemFontOfSize:self.bounds.size.height * 0.66];
}

@end
