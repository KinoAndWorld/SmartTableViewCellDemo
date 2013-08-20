//
//  NibCell.h
//  SmartTableViewCellDemo
//
//  Created by Kino on 13-8-19.
//  Copyright (c) 2013年 Kino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRPNibBasedTableViewCell.h"

@interface NibCell : PRPNibBasedTableViewCell

@property (weak, nonatomic) IBOutlet UILabel *content;


@end
