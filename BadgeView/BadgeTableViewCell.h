//
//  BadgeTableViewCell.h
//  Contacts Reminders
//
//  Created by Yonat Sharon on 1/2/12.
//  Copyright (c) 2012 Roy Sharon Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BadgeLabel.h"

@interface BadgeTableViewCell : UITableViewCell

@property (strong, nonatomic) BadgeLabel *badge;
@property (nonatomic) NSInteger badgeNumber; // for convenience

@end
