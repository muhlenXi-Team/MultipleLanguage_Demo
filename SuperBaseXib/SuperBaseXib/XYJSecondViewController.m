//
//  XYJSecondViewController.m
//  SuperBaseXib
//
//  Created by muhlenXi on 2016/12/7.
//  Copyright © 2016年 XiYinjun. All rights reserved.
//

#import "XYJSecondViewController.h"
#import "XYJLanguageTool.h"

@interface XYJSecondViewController ()

@end

@implementation XYJSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = XYJGetStringWithKey(@"Medicine");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
