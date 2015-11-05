//
//  ViewController.m
//  StyleKitBasics
//
//  Created by Ishan on 10/8/15.
//  Copyright © 2015 AppmonkeyZ MacBook Pro. All rights reserved.
//

#import "ViewController.h"
#import "MyStyleKit.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *lblViewName;

@property (strong, nonatomic) IBOutlet UIImageView *imgCenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblViewName.textColor = [MyStyleKit customGreen];
    self.imgCenter.image = [MyStyleKit imageOfMail];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
