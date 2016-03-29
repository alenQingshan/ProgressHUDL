//
//  ViewController.m
//  ProgressHUDL
//
//  Created by 刘青山 on 16/3/29.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "MBProgressHUD+NJ.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIButton *btn=[UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"ok" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor brownColor]];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 50));
    }];
    
    
}

-(void)btn
{
    [MBProgressHUD showError:@"" time:1];
    [MBProgressHUD showSuccess:@"" time:2];
//    [MBProgressHUD showMessage:@"success" toView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
