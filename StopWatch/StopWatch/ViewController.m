//
//  ViewController.m
//  StopWatch
//
//  Created by Ishan  on 10/8/15.
//  Copyright © 2015 Ishan . All rights reserved.
//

#import "ViewController.h"
#import "PCView.h"
#import "StopWatchStyleKit.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet PCView *pcView;

@property (strong, nonatomic) IBOutlet UIButton *btnNext;


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.btnNext setImage:[StopWatchStyleKit imageOfNextButton] forState:UIControlStateNormal];
    
    NSTimer *mainTimer;
    mainTimer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(drawStopWatch) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:mainTimer forMode:NSDefaultRunLoopMode];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawStopWatch {
    
    NSDate *today = [NSDate date];
    NSCalendar *gregorian = [NSCalendar currentCalendar];
    NSDateComponents *components =
    [gregorian components:(NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:today];
    
    float hour = [components hour];
    NSInteger minute = [components minute];
    NSInteger second = [components second];
    
    
    self.pcView.seconds = second * -6 ;
    self.pcView.minuites = minute * -6 ;
    
    if (minute > 30) {
        hour += 0.5;
    }
    
    
    self.pcView.hour = hour * -30;
    [self.pcView setNeedsDisplay];
    
}

@end
