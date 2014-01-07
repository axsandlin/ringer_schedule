//
//  ScheduleViewController.h
//  RingerSchedule
//
//  Created by James Sandlin on 11/5/13.
//  Copyright (c) 2013 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RepeatViewController.h"


@interface ScheduleViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UITextViewDelegate, RepeatViewControllerDelegate>


- (IBAction)tappedSubmit:(id)sender;

- (IBAction)tappedDelete:(id)sender;

- (IBAction)tappedDone:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *schedDataTableView;

@end
