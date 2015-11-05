//
//  StopWatchStyleKit.m
//  StopWatch
//
//  Created by Ishan Weerasooriya on 10/9/15.
//  Copyright (c) 2015 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "StopWatchStyleKit.h"


@implementation StopWatchStyleKit

#pragma mark Cache

static UIImage* _imageOfNextButton = nil;

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawStopWatchWithSeconds: (CGFloat)seconds minuites: (CGFloat)minuites hours: (CGFloat)hours
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 0.149 green: 0.512 blue: 0.735 alpha: 1];
    UIColor* color = [UIColor colorWithRed: 0.226 green: 0.598 blue: 0.813 alpha: 0.689];
    UIColor* color3 = [UIColor colorWithRed: 0.118 green: 0.443 blue: 0.343 alpha: 1];

    //// Shadow Declarations
    UIColor* shadow = [UIColor.blackColor colorWithAlphaComponent: 0.33];
    CGSize shadowOffset = CGSizeMake(4.1, 5.1);
    CGFloat shadowBlurRadius = 5;

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(22.5, 21.5, 233, 233)];
    [color2 setStroke];
    ovalPath.lineWidth = 1;
    CGFloat ovalPattern[] = {2, 2};
    [ovalPath setLineDash: ovalPattern count: 2 phase: 2];
    [ovalPath stroke];


    //// Rectangle 3 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 138.87, 137.41);
    CGContextRotateCTM(context, -(hours + 90.8928527659) * M_PI / 180);

    UIBezierPath* rectangle3Path = UIBezierPath.bezierPath;
    [rectangle3Path moveToPoint: CGPointMake(44.84, -7.38)];
    [rectangle3Path addLineToPoint: CGPointMake(8.35, -7.46)];
    [rectangle3Path addLineToPoint: CGPointMake(-0.97, 0.64)];
    [rectangle3Path addLineToPoint: CGPointMake(-0.97, 0.64)];
    [rectangle3Path addLineToPoint: CGPointMake(-0.97, 0.64)];
    [rectangle3Path addLineToPoint: CGPointMake(8.57, 8.61)];
    [rectangle3Path addLineToPoint: CGPointMake(45.14, 8.82)];
    [rectangle3Path addLineToPoint: CGPointMake(62.96, 1.39)];
    [rectangle3Path addLineToPoint: CGPointMake(62.96, 0.66)];
    [rectangle3Path addLineToPoint: CGPointMake(44.84, -7.38)];
    [rectangle3Path closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, [shadow CGColor]);
    [color3 setFill];
    [rectangle3Path fill];
    CGContextRestoreGState(context);


    CGContextRestoreGState(context);


    //// Rectangle 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 138.08, 137.14);
    CGContextRotateCTM(context, -(minuites + 91.7504813609) * M_PI / 180);

    UIBezierPath* rectangle2Path = UIBezierPath.bezierPath;
    [rectangle2Path moveToPoint: CGPointMake(79.48, -4.35)];
    [rectangle2Path addLineToPoint: CGPointMake(16.16, -5.92)];
    [rectangle2Path addLineToPoint: CGPointMake(3.5, -6.14)];
    [rectangle2Path addLineToPoint: CGPointMake(-6.1, -0.14)];
    [rectangle2Path addLineToPoint: CGPointMake(3.5, 7.86)];
    [rectangle2Path addLineToPoint: CGPointMake(15.99, 8.08)];
    [rectangle2Path addLineToPoint: CGPointMake(79.07, 9.64)];
    [rectangle2Path addLineToPoint: CGPointMake(89.98, 3.12)];
    [rectangle2Path addLineToPoint: CGPointMake(89.98, 3.12)];
    [rectangle2Path addLineToPoint: CGPointMake(79.48, -4.35)];
    [rectangle2Path closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, [shadow CGColor]);
    [color3 setFill];
    [rectangle2Path fill];
    CGContextRestoreGState(context);


    CGContextRestoreGState(context);


    //// Group
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 138.78, 137.59);
        CGContextRotateCTM(context, -(seconds - 0.136609616678) * M_PI / 180);

        CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, [shadow CGColor]);
        CGContextBeginTransparencyLayer(context, NULL);


        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(-3, -77.59, 6, 107.59)];
        [color2 setFill];
        [rectanglePath fill];


        //// Polygon Drawing
        UIBezierPath* polygonPath = UIBezierPath.bezierPath;
        [polygonPath moveToPoint: CGPointMake(0, -94.5)];
        [polygonPath addLineToPoint: CGPointMake(12.12, -77.25)];
        [polygonPath addLineToPoint: CGPointMake(-12.12, -77.25)];
        [polygonPath closePath];
        [color2 setFill];
        [polygonPath fill];


        //// Oval 2 Drawing
        UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-10, -9, 20, 18)];
        [color2 setFill];
        [oval2Path fill];


        CGContextEndTransparencyLayer(context);

        CGContextRestoreGState(context);
    }


    //// Text Drawing
    CGRect textRect = CGRectMake(131, 21, 17, 15);
    {
        NSString* textContent = @"12";
        NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        textStyle.alignment = NSTextAlignmentCenter;

        NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: 13], NSForegroundColorAttributeName: color, NSParagraphStyleAttributeName: textStyle};

        CGFloat textTextHeight = [textContent boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, textRect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
        CGContextRestoreGState(context);
    }


    //// Text 2 Drawing
    CGRect text2Rect = CGRectMake(239, 130, 17, 15);
    {
        NSString* textContent = @"3";
        NSMutableParagraphStyle* text2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        text2Style.alignment = NSTextAlignmentCenter;

        NSDictionary* text2FontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: 13], NSForegroundColorAttributeName: color, NSParagraphStyleAttributeName: text2Style};

        CGFloat text2TextHeight = [textContent boundingRectWithSize: CGSizeMake(text2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: text2FontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, text2Rect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(text2Rect), CGRectGetMinY(text2Rect) + (CGRectGetHeight(text2Rect) - text2TextHeight) / 2, CGRectGetWidth(text2Rect), text2TextHeight) withAttributes: text2FontAttributes];
        CGContextRestoreGState(context);
    }


    //// Text 3 Drawing
    CGRect text3Rect = CGRectMake(131, 239, 17, 15);
    {
        NSString* textContent = @"6";
        NSMutableParagraphStyle* text3Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        text3Style.alignment = NSTextAlignmentCenter;

        NSDictionary* text3FontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: 13], NSForegroundColorAttributeName: color, NSParagraphStyleAttributeName: text3Style};

        CGFloat text3TextHeight = [textContent boundingRectWithSize: CGSizeMake(text3Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: text3FontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, text3Rect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(text3Rect), CGRectGetMinY(text3Rect) + (CGRectGetHeight(text3Rect) - text3TextHeight) / 2, CGRectGetWidth(text3Rect), text3TextHeight) withAttributes: text3FontAttributes];
        CGContextRestoreGState(context);
    }


    //// Text 4 Drawing
    CGRect text4Rect = CGRectMake(23, 130, 17, 15);
    {
        NSString* textContent = @"9";
        NSMutableParagraphStyle* text4Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        text4Style.alignment = NSTextAlignmentCenter;

        NSDictionary* text4FontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: 13], NSForegroundColorAttributeName: color, NSParagraphStyleAttributeName: text4Style};

        CGFloat text4TextHeight = [textContent boundingRectWithSize: CGSizeMake(text4Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: text4FontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, text4Rect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(text4Rect), CGRectGetMinY(text4Rect) + (CGRectGetHeight(text4Rect) - text4TextHeight) / 2, CGRectGetWidth(text4Rect), text4TextHeight) withAttributes: text4FontAttributes];
        CGContextRestoreGState(context);
    }
}

+ (void)drawPullToRefreshWithAngle: (CGFloat)angle
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color6 = [UIColor colorWithRed: 0.731 green: 0.06 blue: 0.06 alpha: 1];

    //// Group 2
    {
        //// Group
        {
            //// InnerOval Drawing


            //// SRI Drawing
            CGRect sRIRect = CGRectMake(21, 17, 18, 26);
            {
                NSString* textContent = @"ශ්‍රී";
                NSMutableParagraphStyle* sRIStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
                sRIStyle.alignment = NSTextAlignmentCenter;

                NSDictionary* sRIFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.blackColor, NSParagraphStyleAttributeName: sRIStyle};

                CGFloat sRITextHeight = [textContent boundingRectWithSize: CGSizeMake(sRIRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: sRIFontAttributes context: nil].size.height;
                CGContextSaveGState(context);
                CGContextClipToRect(context, sRIRect);
                [textContent drawInRect: CGRectMake(CGRectGetMinX(sRIRect), CGRectGetMinY(sRIRect) + (CGRectGetHeight(sRIRect) - sRITextHeight) / 2, CGRectGetWidth(sRIRect), sRITextHeight) withAttributes: sRIFontAttributes];
                CGContextRestoreGState(context);
            }
        }


        //// OuterOvel Drawing
        CGRect outerOvelRect = CGRectMake(13, 13, 34, 34);
        UIBezierPath* outerOvelPath = UIBezierPath.bezierPath;
        [outerOvelPath addArcWithCenter: CGPointMake(CGRectGetMidX(outerOvelRect), CGRectGetMidY(outerOvelRect)) radius: CGRectGetWidth(outerOvelRect) / 2 startAngle: -90 * M_PI/180 endAngle: -angle * M_PI/180 clockwise: YES];

        [color6 setStroke];
        outerOvelPath.lineWidth = 3;
        [outerOvelPath stroke];
    }
}

+ (void)drawNextButton
{
    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 0.149 green: 0.512 blue: 0.735 alpha: 1];

    //// Group
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(3, 3, 123, 41) cornerRadius: 4];
        [color2 setFill];
        [rectanglePath fill];


        //// Text Drawing
        CGRect textRect = CGRectMake(24, 12, 82, 23);
        NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        textStyle.alignment = NSTextAlignmentCenter;

        NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: textStyle};

        [@"Next" drawInRect: textRect withAttributes: textFontAttributes];
    }
}

#pragma mark Generated Images

+ (UIImage*)imageOfStopWatchWithSeconds: (CGFloat)seconds minuites: (CGFloat)minuites hours: (CGFloat)hours
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(280, 280), NO, 0.0f);
    [StopWatchStyleKit drawStopWatchWithSeconds: seconds minuites: minuites hours: hours];

    UIImage* imageOfStopWatch = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return imageOfStopWatch;
}

+ (UIImage*)imageOfPullToRefreshWithAngle: (CGFloat)angle
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(60, 58), NO, 0.0f);
    [StopWatchStyleKit drawPullToRefreshWithAngle: angle];

    UIImage* imageOfPullToRefresh = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return imageOfPullToRefresh;
}

+ (UIImage*)imageOfNextButton
{
    if (_imageOfNextButton)
        return _imageOfNextButton;

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(130, 48), NO, 0.0f);
    [StopWatchStyleKit drawNextButton];

    _imageOfNextButton = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return _imageOfNextButton;
}

#pragma mark Customization Infrastructure

- (void)setNextButtonTargets: (NSArray*)nextButtonTargets
{
    _nextButtonTargets = nextButtonTargets;

    for (id target in self.nextButtonTargets)
        [target setImage: StopWatchStyleKit.imageOfNextButton];
}


@end
