//
//  BadgeTableViewCell.m
//  Contacts Reminders
//
//  Created by Yonat Sharon on 1/2/12.
//  Copyright (c) 2012 Roy Sharon Ltd. All rights reserved.
//

#import "BadgeTableViewCell.h"
#import "BadgeLabel.h"

@implementation BadgeTableViewCell

@synthesize badge;

- (void)layoutBadge
{
    if (badge == nil || [badge.text length] == 0) return;
    CGRect badgeFrame = badge.frame;
    CGRect contentBounds = self.contentView.bounds;
    badgeFrame.origin.y = contentBounds.origin.y + (contentBounds.size.height - badgeFrame.size.height) / 2;
    badgeFrame.origin.x = contentBounds.origin.x + contentBounds.size.width - badgeFrame.size.width - 8;
    badge.frame = badgeFrame;
}

- (void)createBadge
{
    self.badge = [[BadgeLabel alloc] init];
    [badge setStyle:BadgeLabelStyleMail];
    [self.contentView addSubview:badge];
}

- (NSInteger)badgeNumber
{
    if (self.badge) {
        return [self.badge.text integerValue];
    }
    return 0;
}

- (void)setBadgeNumber:(NSInteger)badgeNumber
{
    if (badgeNumber == 0) {
        badge.hidden = YES;
        return;
    }

    if (!badge) {
        [self createBadge];
    }

    badge.text = [NSString stringWithFormat:@"%d", badgeNumber];
    badge.hidden = NO;
    [self layoutBadge];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self layoutBadge];
}

@end
