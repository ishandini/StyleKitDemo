//
//  PCView.m
//  StyleKitBasics
//
//  Created by Ishan on 10/8/15.
//  Copyright © 2015 AppmonkeyZ MacBook Pro. All rights reserved.
//

#import "PCView.h"
#import "MyStyleKit.h"

@implementation PCView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect {

    [MyStyleKit drawFood];
}

@end
