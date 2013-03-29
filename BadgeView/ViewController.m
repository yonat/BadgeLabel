//
//  ViewController.m
//  BadgeView
//
//  Created by Yonat Sharon on 7/2/12.
//  Copyright (c) 2012 Roy Sharon Ltd. All rights reserved.
//

#import "ViewController.h"
#import "BadgeTableViewCell.h"

@interface ViewController () {
    NSMutableArray *cells;
}

@end

@implementation ViewController

@synthesize badge;
@synthesize slider;

#pragma mark - Slider

- (IBAction)sliderChanged
{
    NSString *s = [NSString stringWithFormat:@"%ld", lroundf(slider.value)];
    badge.text = s;
}

- (IBAction)badgeTapped
{
    UIColor *badgeColor = badge.backgroundColor;
    [UIView animateWithDuration:0.5
                     animations:^{
                         badge.backgroundColor = [UIColor blueColor];
                     }
                     completion:^(BOOL finished){
                         [UIView animateWithDuration:0.5
                                          animations:^{ badge.backgroundColor = badgeColor; }
                          ];
                     }
     ];
}

#pragma mark - Table View

- (void)initCells
{
    cells = [[NSMutableArray alloc] initWithCapacity:3];
    BadgeTableViewCell *cell;
    for (int i = 0; i < 3; ++i) {
        cell = [[BadgeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", i];
        cell.badgeNumber = lround( pow(7, 1+i) );
        [cells addObject:cell];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [cells count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [cells objectAtIndex:indexPath.row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BadgeTableViewCell *cell = [cells objectAtIndex:indexPath.row];
    UIColor *cellBadgeColor = cell.badge.backgroundColor;
    [UIView animateWithDuration:0.5
                     animations:^{ cell.badge.backgroundColor = [UIColor orangeColor]; }
                     completion:^(BOOL finished){
                         [UIView animateWithDuration:0.5
                                          animations:^{ cell.badge.backgroundColor = cellBadgeColor; }
                                          completion:^(BOOL finished){ [tableView deselectRowAtIndexPath:indexPath animated:YES]; }
                          ];
                     }
     ];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [self initCells];
    [super viewDidLoad];
	[badge setStyle:BadgeLabelStyleAppIcon];
    [self sliderChanged];
    [badge addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(badgeTapped)]];
}

- (void)viewDidUnload
{
    [self setBadge:nil];
    [self setSlider:nil];
    [super viewDidUnload];
    cells = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
