# BGTableViewRowActionWithImage

A variation on the iOS 8.0+ `UITableViewRowAction` to support icons, with text below. Similar to the iOS 9 Mail application and various third-party applications.

**The implementation isn't ideal,** but it works. Until this becomes a built-in property for `UITableViewRowAction`, please feel free to contribute any improvements or compatibility tweaks as you see fit.

[![Version](https://img.shields.io/cocoapods/v/BGTableViewRowActionWithImage.svg?style=flat)](http://cocoapods.org/pods/BGTableViewRowActionWithImage)
[![License](https://img.shields.io/cocoapods/l/BGTableViewRowActionWithImage.svg?style=flat)](http://cocoapods.org/pods/BGTableViewRowActionWithImage)
[![Platform](https://img.shields.io/cocoapods/p/BGTableViewRowActionWithImage.svg?style=flat)](http://cocoapods.org/pods/BGTableViewRowActionWithImage)

## Usage

```objc
// Regular width
+ (instancetype)rowActionWithStyle:(UITableViewRowActionStyle)style
                             title:(NSString *)title
                   backgroundColor:(UIColor *)backgroundColor
                             image:(UIImage *)image
                     forCellHeight:(NSUInteger)cellHeight
                           handler:(void (^)(UITableViewRowAction *, NSIndexPath *))handler;

+ (instancetype)rowActionWithStyle:(UITableViewRowActionStyle)style
                             title:(NSString *)title
                        titleColor:(UIColor *)titleColor
                   backgroundColor:(UIColor *)backgroundColor
                             image:(UIImage *)image
                     forCellHeight:(NSUInteger)cellHeight
                           handler:(void (^)(UITableViewRowAction *, NSIndexPath *))handler;

// Optional fitted width (ideal when using 3 or more cells in smaller tables)
+ (instancetype)rowActionWithStyle:(UITableViewRowActionStyle)style
                             title:(NSString *)title
                   backgroundColor:(UIColor *)backgroundColor
                             image:(UIImage *)image
                     forCellHeight:(NSUInteger)cellHeight
                    andFittedWidth:(BOOL)isWidthFitted
                           handler:(void (^)(UITableViewRowAction *, NSIndexPath *))handler;

+ (instancetype)rowActionWithStyle:(UITableViewRowActionStyle)style
                             title:(NSString *)title
                        titleColor:(UIColor *)titleColor
                   backgroundColor:(UIColor *)backgroundColor
                             image:(UIImage *)image
                     forCellHeight:(NSUInteger)cellHeight
                    andFittedWidth:(BOOL)isWidthFitted
                           handler:(void (^)(UITableViewRowAction *, NSIndexPath *))handler;
```

Use this constructor **only** to configure the row action. Manually setting the `backgroundColor` will probably result in unexpected behavior.

## Demo

![Example screenshot](https://raw.github.com/benguild/BGTableViewRowActionWithImage/master/demo.jpg "Example screenshot")

## Installation

`BGTableViewRowActionWithImage` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BGTableViewRowActionWithImage"
```

## Author

Ben Guild, email@benguild.com

## License

`BGTableViewRowActionWithImage` is available under the MIT license. See the LICENSE file for more info.
