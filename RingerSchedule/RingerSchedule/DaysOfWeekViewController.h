//
//  DaysOfWeekViewController.h
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/14/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DaysOfWeekViewController;

@protocol  DaysOfWeekViewControllerDelegate <NSObject>

-(void)getDaysOfWeek:(DaysOfWeekViewController *)daysOfWeekViewController didSelectDaysOfWeek:(NSString *)daysOfWeekReturned;

@end

@interface DaysOfWeekViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <DaysOfWeekViewControllerDelegate> delegate;
- (IBAction)tappedDone:(id)sender;

@end
