//
//  ViewController.h
//  BadgeView
//
//  Created by Yonat Sharon on 7/2/12.
//  Copyright (c) 2012 Roy Sharon Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BadgeLabel.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet BadgeLabel *badge;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)sliderChanged;
- (IBAction)badgeTapped;

@end
