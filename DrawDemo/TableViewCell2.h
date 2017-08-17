//
//  TableViewCell2.h
//  DrawDemo
//
//  Created by 管复生 on 2017/8/17.
//  Copyright © 2017年 DevGuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell2 : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *textL;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
