//
//  PickerCell.h
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/17/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIDatePicker *startPicker;
@property (strong, nonatomic) IBOutlet UIDatePicker *endPicker;

@end
