//
//  ViewController.m
//  JsPatchDemo
//
//  Created by 陈威利 on 17/3/13.
//  Copyright © 2017年 陈威利. All rights reserved.
//

#import "ViewController.h"
#import <JSPatchPlatform/JSPatch.h>
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>
@property (nonatomic,strong)UITableView *mainTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.mainTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _mainTableView.dataSource = self;
    _mainTableView.delegate = self;
    [self.view addSubview:_mainTableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc ]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        cell.layoutMargins=UIEdgeInsetsZero;
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        cell.separatorInset=UIEdgeInsetsZero;
    }
    cell.textLabel.text = @"add";
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *arr = @[@"1",@"2",@"3",@"4"];
   UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示"message:arr[indexPath.row] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消"style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的"style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:cancelAction];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
