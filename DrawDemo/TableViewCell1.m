//
//  TableViewCell1.m
//  DrawDemo
//
//  Created by 管复生 on 2017/8/17.
//  Copyright © 2017年 DevGuan. All rights reserved.
//

#import "TableViewCell1.h"
@interface TableViewCell1()


@end
@implementation TableViewCell1
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    TableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self)];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:self options:nil]firstObject];
    }
    return cell;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _btn.layer.cornerRadius = 60;
    _btn.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
