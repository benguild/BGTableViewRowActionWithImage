# BGTableViewRowActionWithImage

**NOTE:** This project is no longer being maintained by the author as of March 2018.

**UPDATE:** Finally, Apple has given us `UIContextualAction` in iOS 11: https://developer.apple.com/documentation/uikit/uicontextualaction

> **For iOS 11 and above,** you MUST use this. ⬆️

--------

A variation on the iOS 8.0+ `UITableViewRowAction` to support icons, with text below. Similar to the iOS 9 Mail application and various third-party applications. We're all secretly hoping that Apple will implement this functionality with a native, public API in a future iOS update.

**This iOS 8-10 implementation isn't ideal,** but it works. In iOS 11 and later, you MUST use Apple's built-in `UIContextualAction` instead! This library may still work for you in its default configuration, but is no longer supported by iOS 11 and later.

[![Version](https://img.shields.io/cocoapods/v/BGTableViewRowActionWithImage.svg?style=flat)](http://cocoapods.org/pods/BGTableViewRowActionWithImage)
[![License](https://img.shields.io/cocoapods/l/BGTableViewRowActionWithImage.svg?style=flat)](http://cocoapods.org/pods/BGTableViewRowActionWithImage)
[![Platform](https://img.shields.io/cocoapods/p/BGTableViewRowActionWithImage.svg?style=flat)](http://cocoapods.org/pods/BGTableViewRowActionWithImage)

## Objective-C Usage

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

Use **one** of these constructors **only** to configure each row action, depending on your needs. Manually setting the `backgroundColor` property of a row action after calling a constructor will probably result in unexpected behavior, and should be avoided.

## Swift

For **Swift**, the syntax changes slightly:

```swift
// In your imports:
import BGTableViewRowActionWithImage

// In your code:
BGTableViewRowActionWithImage.rowActionWithStyle(/* see above for parameters... */)
```

See *"Objective-C Usage"* above for parameter configurations and **other important notes**.

## Demo

![Example screenshot](https://raw.github.com/benguild/BGTableViewRowActionWithImage/master/demo.jpg "Example screenshot")

## Installation

`BGTableViewRowActionWithImage` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BGTableViewRowActionWithImage"
```

## Author

Ben Guild, hello@benguild.com

## License

`BGTableViewRowActionWithImage` is available under the MIT license. See the LICENSE file for more info.
