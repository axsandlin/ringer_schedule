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

@interface DaysOfWeekViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

- (IBAction)tappedDone:(id)sender;

@property (nonatomic, weak) id <DaysOfWeekViewControllerDelegate> delegate;

@property(nonatomic, assign) BOOL monday;
@property(nonatomic, assign) BOOL tuesday;
@property(nonatomic, assign) BOOL wednesday;
@property(nonatomic, assign) BOOL thursday;
@property(nonatomic, assign) BOOL friday;
@property(nonatomic, assign) BOOL saturday;
@property(nonatomic, assign) BOOL sunday;
@property (nonatomic, weak) NSString *daysOfWeek;





@end
