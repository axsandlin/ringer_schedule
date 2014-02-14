//
//  ScheduleViewController.h
//  RingerSchedule
//
//  Created by James Sandlin on 11/5/13.
//  Copyright (c) 2013 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DaysOfWeekViewController.h"
#import "RepeatCell.h"
#import "ScheduleNameCell.h"
#import "DayofWeekCell.h"
#import "TimeCell.h"
#import "RingerSelectionCell.h"
#import "RepeatViewController.h"



@interface ScheduleViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UITextViewDelegate, RepeatViewControllerDelegate, DaysOfWeekViewControllerDelegate>


- (IBAction)tappedDelete:(id)sender;

- (IBAction)tappedDone:(id)sender;

@property (nonatomic, weak) NSString *identifier;
@property (nonatomic, weak) NSString *scheduleName;
@property (nonatomic, weak) NSString *startTimeString;
@property (nonatomic, weak) NSString *endTimeString;
@property (nonatomic, weak) NSString *repeatValueForward;
@property (nonatomic, weak) NSString *dayOfWeekForward;
@property(nonatomic, assign) int segmentValue;


@property (weak, nonatomic) IBOutlet UITableView *schedDataTableView;


@end
