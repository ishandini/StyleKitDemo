//
//  RefreshTableViewController.m
//  StopWatch
//
//  Created by Ishan on 10/9/15.
//  Copyright © 2015 Ishan . All rights reserved.
//

#import "RefreshTableViewController.h"
#import "StopWatchStyleKit.h"

@interface RefreshTableViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imgRefresh;


@end

@implementation RefreshTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImageView *rcImageView = [[UIImageView alloc] initWithImage:[StopWatchStyleKit imageOfPullToRefreshWithAngle:10]];
    [self.imgRefresh setImage:[StopWatchStyleKit imageOfPullToRefreshWithAngle:-50]];
    
     [self.imgRefresh setCenter:CGPointMake(self.view.frame.size.width/2, 30)];
    
    UIRefreshControl *refresh = [[UIRefreshControl alloc] init];
    
    [refresh addTarget:self action:@selector(crunchNumbers)
     
      forControlEvents:UIControlEventValueChanged];
    [refresh insertSubview:self.imgRefresh atIndex:0];
    
    
    
    self.refreshControl = refresh;
    [self.refreshControl beginRefreshing];
    
    
    [self crunchNumbers];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
    
}

- (void)stopRefresh

{
    
    [self.refreshControl endRefreshing];
    
}


- (void)crunchNumbers

{
    
    NSLog(@"call");
    
    
    [self performSelector:@selector(stopRefresh) withObject:nil afterDelay:2.5];
    
}


- (void)beginRefreshing {

    NSLog(@"first");
}


@end
