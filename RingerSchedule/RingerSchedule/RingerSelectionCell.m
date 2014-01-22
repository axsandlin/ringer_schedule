//
//  RingerSelectionCell.m
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/22/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import "RingerSelectionCell.h"

@implementation RingerSelectionCell

@synthesize ringerSelection;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
