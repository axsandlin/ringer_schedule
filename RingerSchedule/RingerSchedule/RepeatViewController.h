//
//  RepeatViewController.h
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/2/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import <UIKit/UIKit.h>
 

@class RepeatViewController;

@protocol RepeatViewControllerDelegate <NSObject>

-(void)getRepeatValue:(RepeatViewController *)repeatViewController didSelectRepeatValue:(NSString *)repeatValue;

@end

@interface RepeatViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <RepeatViewControllerDelegate> delegate;

@end


