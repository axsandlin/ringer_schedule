//
//  TimeCell.h
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/18/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeCell : UITableViewCell

@property (nonatomic, retain) IBOutlet UIDatePicker *startTime;
@property (nonatomic, retain) IBOutlet UIDatePicker *endTime;

@end
