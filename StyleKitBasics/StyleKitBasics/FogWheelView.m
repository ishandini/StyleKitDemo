//
//  FogWheelView.m
//  StyleKitBasics
//
//  Created by Ishan on 10/28/15.
//  Copyright © 2015 AppmonkeyZ MacBook Pro. All rights reserved.
//

#import "FogWheelView.h"
#import "AmazingStyleKit.h"

@implementation FogWheelView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)drawRect:(CGRect)rect {

    [AmazingStyleKit drawFogWheelWithAngleRight:0 angleLeft:0];
}

@end
