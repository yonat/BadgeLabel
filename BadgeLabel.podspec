
Pod::Spec.new do |s|
  s.name         = "BadgeLabel"
  s.version      = "1.1.0"
  s.summary      = "Simple animatable badge, based on UILabel and using CALayer"

  s.description  = <<-DESC
Basic usage:
  
  ```objective-c
BadgeLabel *badge = [BadgeLabel new];
badge.text = @"42";
```

Configure appearance:

```objective-c
badge.backgroundColor = [UIColor blueColor];
badge.hasBorder = YES;
badge.hasGloss = NO;
```
                   DESC

  s.homepage     = "https://github.com/yonat/BadgeLabel"
  s.screenshots  = "http://ootips.org/yonat/wp-content/uploads/2012/02/badge.png"

  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author             = { "Yonat Sharon" => "yonat@ootips.org" }
  s.social_media_url   = "http://twitter.com/yonatsharon"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/yonat/BadgeLabel.git", :tag => s.version }

  s.source_files  = "BadgeLabel.{h,m}", "BadgeTableViewCell.{h,m}"
  s.exclude_files = "BadgeView", "BadgeView.xcodeproj"

  s.frameworks = 'QuartzCore'

  s.requires_arc = true

end
