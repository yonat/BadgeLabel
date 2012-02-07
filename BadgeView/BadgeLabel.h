//
//  BadgeLabel.h
//  Badge
//
//  Created by Yonat Sharon on 11/1/11.
//

#import <UIKit/UIKit.h>

typedef enum BadgeLabelStyle {
    BadgeLabelStyleAppIcon, // red background, white border, gloss and shadow
    BadgeLabelStyleMail     // gray background, minWidth
} BadgeLabelStyle;

@interface BadgeLabel : UILabel

@property (nonatomic) BOOL hasBorder;
@property (nonatomic) BOOL hasShadow;
@property (nonatomic) BOOL hasGloss;
@property (nonatomic) CGFloat minWidth;

- (void)setStyle:(BadgeLabelStyle)style;

@end
