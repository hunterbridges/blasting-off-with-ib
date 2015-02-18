//
//  EmojiAvatarView.h
//  Homie
//
//  Created by Hunter Bridges on 2/17/15.
//  Copyright (c) 2015 Jawbone. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface EmojiAvatarView : UIView

@property (nonatomic, strong) IBInspectable UIColor *ovalColor;
@property (nonatomic, strong) IBInspectable NSString *emoji;

@property (nonatomic, strong) CAShapeLayer *ovalLayer;
@property (nonatomic, strong) UILabel *emojiLabel;

@end
