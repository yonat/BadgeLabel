<img style="float:right" src="http://ootips.org/yonat/wp-content/uploads/2012/02/badge.png">

## Simple Animatable Badge based on UILabel using CALayer-s

```objective-c
BadgeLabel *badge = [BadgeLabel new];
badge.text = @"42";
```

Easily configure appearance:

```objective-c
badge.backgroundColor = [UIColor blueColor];
badge.hasBorder = YES;
badge.hasGloss = NO;
```

Includes two classes:

**BadgeLabel** - UILabel-derived badge, either Mail.app style gray, or app icon style red with border and gloss, or any other color and style combination.

**BadgeTableViewCell** - a UITableViewCell with a Mail.app style badge.

Unlike CoreGraphics based badges, this badge class can allows the flexibility and power of CoreAnimation layers - run the demo app to see how easy it is.

**Note**: To use BadgeLabel you need to link QuartzCore.framework .