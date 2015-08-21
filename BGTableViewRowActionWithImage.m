//
//  BGTableViewRowActionWithImage.m
//  BGTableViewRowActionWithImage
//
//  Created by Ben Guild on 8/20/15.
//  Copyright (c) 2015 Ben Guild. All rights reserved.
//

#import "BGTableViewRowActionWithImage.h"


#define fontSize_iOS8AndUpDefault 18.0f
#define fontSize_actuallyUsedUnderImage 13.0f

#define margin_horizontal_iOS8AndUp 15.0f
#define margin_vertical_betweenTextAndImage (cellHeight>=64.0f ? 3.0f : 2.0f)


@implementation BGTableViewRowActionWithImage

+ (instancetype)rowActionWithStyle:(UITableViewRowActionStyle)style title:(NSString *)title backgroundColor:(UIColor *)backgroundColor image:(UIImage *)image forCellHeight:(NSUInteger)cellHeight handler:(void (^)(UITableViewRowAction *, NSIndexPath *))handler
{
    NSString *titleSpaceString=[@"" stringByPaddingToLength:[title length]*(fontSize_actuallyUsedUnderImage/fontSize_actuallyUsedUnderImage) withString:@"\u2007" startingAtIndex:0]; // This isn't exact, but it's close enough in most instances? I tested with full-width characters and it accounted for those pretty well.
    
    BGTableViewRowActionWithImage *rowAction=(BGTableViewRowActionWithImage *)[self rowActionWithStyle:style title:titleSpaceString handler:handler];
    
    CGSize frameGuess=CGSizeMake((margin_horizontal_iOS8AndUp*2)+[titleSpaceString boundingRectWithSize:CGSizeMake(MAXFLOAT, cellHeight) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName: [UIFont systemFontOfSize:fontSize_iOS8AndUpDefault] } context:nil].size.width, cellHeight);
    
    CGSize tripleFrame=CGSizeMake(frameGuess.width*3.0f, frameGuess.height*3.0f);
    
    UIGraphicsBeginImageContextWithOptions(tripleFrame, YES, [[UIScreen mainScreen] scale]);
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    [backgroundColor set];
    CGContextFillRect(context, CGRectMake(0, 0, tripleFrame.width, tripleFrame.height));
    
    CGSize drawnTextSize=[title boundingRectWithSize:CGSizeMake(MAXFLOAT, cellHeight) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName: [UIFont systemFontOfSize:fontSize_actuallyUsedUnderImage] } context:nil].size;
    
    [image drawAtPoint:CGPointMake((frameGuess.width/2.0f)-([image size].width/2.0f), (frameGuess.height/2.0f)-[image size].height-(margin_vertical_betweenTextAndImage/2.0f)+2.0f)];
    [title drawInRect:CGRectMake((frameGuess.width/2.0f)-(drawnTextSize.width/2.0f), (frameGuess.height/2.0f)+(margin_vertical_betweenTextAndImage/2.0f)+2.0f, frameGuess.width, frameGuess.height) withAttributes:@{ NSFontAttributeName: [UIFont systemFontOfSize:fontSize_actuallyUsedUnderImage], NSForegroundColorAttributeName: [UIColor whiteColor] }];
    
    [rowAction setBackgroundColor:[UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()]];
    UIGraphicsEndImageContext();
    ////
    
    return rowAction;
    
}

@end
