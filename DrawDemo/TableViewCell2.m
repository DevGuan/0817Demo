//
//  TableViewCell2.m
//  DrawDemo
//
//  Created by 管复生 on 2017/8/17.
//  Copyright © 2017年 DevGuan. All rights reserved.
//

#import "TableViewCell2.h"

@implementation TableViewCell2
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    TableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self)];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:self options:nil]firstObject];
    }
    return cell;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _imageV.layer.cornerRadius = 60;
    _imageV.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
