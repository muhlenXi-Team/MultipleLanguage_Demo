//
//  XYJFirstViewController.m
//  SuperBaseXib
//
//  Created by muhlenXi on 2016/12/7.
//  Copyright © 2016年 XiYinjun. All rights reserved.
//

#import "XYJFirstViewController.h"
#import "XYJLanguageTool.h"

@interface XYJFirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation XYJFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = XYJGetStringWithKey(@"Alarm clock");
    
    self.descriptionLabel.text = NSLocalizedString(@"test words", @"hehe");
    
}


- (IBAction)English:(UIButton *)sender {
    
    [[XYJLanguageTool sharedInstance] setNewLanguage:@"en"];
}
- (IBAction)Chinese:(UIButton *)sender {
    
    [[XYJLanguageTool sharedInstance] setNewLanguage:@"zh-Hans"];
}
- (IBAction)TraditionalChinese:(UIButton *)sender {
    
    [[XYJLanguageTool sharedInstance] setNewLanguage:@"zh-Hant"];
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
