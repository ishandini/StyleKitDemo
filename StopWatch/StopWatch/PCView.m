//
//  PCView.m
//  StopWatch
//
//  Created by Ishan  on 10/8/15.
//  Copyright © 2015 Ishan . All rights reserved.
//

#import "PCView.h"



@implementation PCView


- (void)drawRect:(CGRect)rect { 
    [StopWatchStyleKit drawStopWatchWithSeconds:self.seconds minuites:self.minuites hours:self.hour];
    
}




@end
