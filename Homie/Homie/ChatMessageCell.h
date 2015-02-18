//
//  ChatMessageCell.h
//  Homie
//
//  Created by Hunter Bridges on 2/17/15.
//  Copyright (c) 2015 Jawbone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmojiAvatarView.h"

@interface ChatMessageCell : UITableViewCell

@property (weak, nonatomic) IBOutlet EmojiAvatarView *emojiAvatarView;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end
