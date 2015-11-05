//
//  LionViewController.m
//  StyleKitBasics
//
//  Created by Ishan on 10/28/15.
//  Copyright © 2015 AppmonkeyZ MacBook Pro. All rights reserved.
//

#import "LionViewController.h"
#import <JCRBlurView.h>
#import "AppDelegate.h"
#import "AmazingStyleKit.h"

@interface LionViewController () {

    
}

@property (strong, nonatomic) IBOutlet JCRBlurView *blurView;
@property (strong, nonatomic) IBOutlet UIImageView *imgMessageRectangle;

@property (strong, nonatomic) IBOutlet UIImageView *imgTimeLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imgCogWheel;




@end

@implementation LionViewController {

    int angle;
    int time;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect frame = self.blurView.frame;
    frame.size.width = self.view.frame.size.width;
    frame.size.height = self.view.frame.size.height;
    frame.origin.y = 0;
    angle = 0;
    time = 59;
    
    [self.blurView setFrame:frame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressedAddview:(id)sender {
  
    [self.imgMessageRectangle setImage:[AmazingStyleKit imageOfMessageRectangle]];
    [self.imgTimeLabel setImage:[AmazingStyleKit imageOfTimeLabelWithRemainTime:@"00:59"]];
    
    [self.imgCogWheel setImage:[AmazingStyleKit imageOfFogWheelWithAngleRight:angle angleLeft:angle]];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0/20 target:self selector:@selector(ubdateFogWheel:) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(ubdateTimeLabel:) userInfo:nil repeats:YES];
    
    [self.navigationController.view addSubview:self.blurView];
    
    [UIView animateWithDuration:1.0 animations:^() {
        self.blurView.alpha = 1.0f;
    }];
    
    

}

- (IBAction)pressedRemoveView:(id)sender {
    
    
    [UIView animateWithDuration:1.0 animations:^() {
        self.blurView.alpha = 0.0f;
        [self.blurView removeFromSuperview];
    }];
}

- (IBAction)ubdateFogWheel:(id)sender{

    angle--;
    [self.imgCogWheel setImage:[AmazingStyleKit imageOfFogWheelWithAngleRight:angle angleLeft:(-angle)]];
    
}

- (IBAction)ubdateTimeLabel:(id)sender{
    
    time--;
    [self.imgTimeLabel setImage:[AmazingStyleKit imageOfTimeLabelWithRemainTime:[NSString stringWithFormat:@"00:%i",time]]];
    
}




@end
