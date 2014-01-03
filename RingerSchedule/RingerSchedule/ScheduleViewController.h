//
//  ScheduleViewController.h
//  RingerSchedule
//
//  Created by James Sandlin on 11/5/13.
//  Copyright (c) 2013 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UITextViewDelegate>

- (IBAction)tappedSubmit:(id)sender;

- (IBAction)tappedDelete:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *schedDataTableView;

@end
