//
//  ViewController.m
//  对话框
//
//  Created by stu1 on 2018/11/19.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)ShowAlert:(id)sender;
- (IBAction)sheetAlert:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ShowAlert:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告！" message:@"确定删除此条信息？" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionOne = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil];
    UIAlertAction *actionTwo = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:actionOne];
    [alert addAction:actionTwo];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)sheetAlert:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *actionOne = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *actionTwo = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:actionOne];
    [alert addAction:actionTwo];
    [alert addAction:actionCancel];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
