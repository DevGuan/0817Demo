//
//  ViewController.m
//  DrawDemo
//
//  Created by 管复生 on 2017/8/17.
//  Copyright © 2017年 DevGuan. All rights reserved.
//

#import "ViewController.h"

#import "TableViewCell1.h"
#import "TableViewCell2.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak ,nonatomic)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *table = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:table];
    _tableView = table;
    table.delegate = self;
    table.dataSource = self;
    
    table.rowHeight = 130;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger index = indexPath.row % 6;
    switch (index) {
        case 0:
        {
            TableViewCell1 *cell = [TableViewCell1 cellWithTableView:tableView];
            cell.textL.text = @"按钮存在背景图片";
//            [cell.btn setImage:[UIImage imageNamed:@"dog2"] forState:UIControlStateNormal];
            [cell.btn setBackgroundImage:[UIImage imageNamed:@"dog2"] forState:UIControlStateNormal];
            cell.backgroundColor = [UIColor clearColor];
            return cell;
        }
            break;
            
        case 1:
        {
            TableViewCell1 *cell = [TableViewCell1 cellWithTableView:tableView];
            cell.textL.text = @"按钮没有背景图片";
//            [cell.btn setImage:[UIImage imageNamed:@"dog2"] forState:UIControlStateNormal];
            [cell.btn setImage:nil forState:UIControlStateNormal];
            cell.btn.backgroundColor = [UIColor greenColor];
            return cell;
        }
            break;
            
        case 2:
        {
            TableViewCell2 *cell = [TableViewCell2 cellWithTableView:tableView];
            cell.textL.text = @"imageView + 背景色 + png格式图片";
            cell.imageV.image = [UIImage imageNamed:@"dog1"];
            cell.imageV.backgroundColor = [UIColor greenColor];
            return cell;
        }
            break;
        case 3:
        {
            TableViewCell2 *cell = [TableViewCell2 cellWithTableView:tableView];
            cell.textL.text = @"imageView + 背景色 + jpg格式图片";
            cell.imageV.image = [UIImage imageNamed:@"dog.jpg"];
            cell.imageV.backgroundColor = [UIColor greenColor];
            return cell;
        }
            break;
        case 4:
        {
            TableViewCell2 *cell = [TableViewCell2 cellWithTableView:tableView];
            cell.textL.text = @"imageView  + png格式图片";
            cell.imageV.image = [UIImage imageNamed:@"dog3"];
//            cell.imageV.backgroundColor = [UIColor greenColor];
            return cell;
        }
            break;
        default:
        {
            TableViewCell2 *cell = [TableViewCell2 cellWithTableView:tableView];
            cell.textL.text = @"imageView + jpg格式图片";
            cell.imageV.image = [UIImage imageNamed:@"dog.jpg"];
//            cell.imageV.backgroundColor = [UIColor greenColor];
            return cell;
        }
            break;
    }
}
@end
