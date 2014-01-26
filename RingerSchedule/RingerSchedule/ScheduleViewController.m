//
//  ScheduleViewController.m
//  RingerSchedule
//
//  Created by James Sandlin on 11/5/13.
//  Copyright (c) 2013 Aubri Sandlin. All rights reserved.
//

#import "ScheduleViewController.h"
#import "Schedule.h"

@interface ScheduleViewController ()

@end

@implementation ScheduleViewController

@synthesize schedDataTableView;
@synthesize identifier;
@synthesize scheduleName;
@synthesize startTimeString;
@synthesize endTimeString;
@synthesize segmentValue;
@synthesize repeatValueForward;
@synthesize dayOfWeekForward;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    repeatValueForward = @"Never";
    
 //   [_mySlider setThumbImage: [UIImage imageNamed:@"audio_volume_high.png"] forState:UIControlStateNormal];
    
}    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getRepeatValue:(RepeatViewController *)repeatViewController didSelectRepeatValue:(NSString *)repeatValueReturned
{

    
 NSLog(@"This was returned from RepeatViewController %@",repeatValueReturned);
    
    //I cast the selected cell into my custom cell in order to access the label property/outlet and update the label.
    
    RepeatCell *myCell = (RepeatCell *)[self.schedDataTableView cellForRowAtIndexPath:schedDataTableView.indexPathForSelectedRow];
    repeatValueForward = repeatValueReturned;
    myCell.repeatLabel.text = repeatValueReturned;
}

-(void)getDaysOfWeek:(DaysOfWeekViewController *)daysOfWeekViewController didSelectDaysOfWeek:(NSString *)daysOfWeekReturned; {
    
    NSLog(@"The value of daysOfWeek is %@", daysOfWeekReturned);
    DayofWeekCell *myCell = (DayofWeekCell *)[self.schedDataTableView cellForRowAtIndexPath:schedDataTableView.indexPathForSelectedRow];
    dayOfWeekForward = daysOfWeekReturned;
    myCell.daysOfWeek.text = daysOfWeekReturned;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    //Called when the user clicks inside the text field.
    
    NSLog(@"Text field did begin editing");
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    
    //Called when return key (before textFieldShouldReturn) is hit and when user clicks on a Repeat cell (new view controller) I think because this is called only when resignFirstReponder is called.
    
    //If user enters no schedule name, then the the schedule name will be New Schedule.
    
    if ([textField.text isEqualToString:@""]) {
        
        scheduleName = @"New Schedule";
    }
    else if (![textField.text isEqualToString:@""]) {
        
        scheduleName = textField.text;
    }
    
    NSLog(@"Text field ended editing");

    NSLog(@"The value of the text field is %@", scheduleName);
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField

//Called when the return key is hit.
{
    //hide the keyboard
    [textField resignFirstResponder];
    
    NSLog(@"Text Field Should Return Is Called");

    
    //return NO or YES, it doesn't matter
    return YES;
    
    NSLog(@"Text Field Should Return Is Called");

}

- (IBAction)tappedDelete:(id)sender {
    
    //If you push the view onto the navigation controller, you have to pop it from the stack.
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)tappedDone:(id)sender {

    //References the table cells by index path.
    
  TimeCell *myStartCell = (TimeCell *)[self.schedDataTableView cellForRowAtIndexPath: [NSIndexPath indexPathForRow:2 inSection:0]];
  TimeCell *myEndCell = (TimeCell *)[self.schedDataTableView cellForRowAtIndexPath: [NSIndexPath indexPathForRow:3 inSection:0]];
  
    RingerSelectionCell *myRingerCell = (RingerSelectionCell *) [self.schedDataTableView cellForRowAtIndexPath: [NSIndexPath indexPathForRow:10 inSection:0]];
  
   NSDateFormatter *startFormatter = [[NSDateFormatter alloc] init];
  [startFormatter setDateFormat:@"HH:mm"]; //24hr time format
    
  startTimeString = [startFormatter stringFromDate:myStartCell.startTime.date];
  endTimeString = [startFormatter stringFromDate:myEndCell.endTime.date];
    
    if (myRingerCell.ringerSelection.selectedSegmentIndex == 0) {
        segmentValue = 0;
    }else if (myRingerCell.ringerSelection.selectedSegmentIndex ==1) {
        segmentValue = 1;
    }else if (myRingerCell.ringerSelection.selectedSegmentIndex ==2) {
        segmentValue =2;
    }
    
  [[self navigationController] popViewControllerAnimated:YES];

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
     return 11;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        identifier = @"ScheduleName";
    } else if (indexPath.row == 1) {
        identifier = @"Blank";
    }
    else if (indexPath.row ==2) {
        identifier =@"StartTimeDisp";
    }
    else if (indexPath.row ==3) {
        identifier =@"EndTimeDisp";
    }
    else if (indexPath.row ==4) {
        identifier =@"Blank";
    }
    else if (indexPath.row ==5) {
        identifier =@"Repeat";
    }
    else if (indexPath.row ==6) {
        identifier =@"Blank";
    }
    else if (indexPath.row ==7) {
        identifier =@"DayOfWeek";
    }
    else if (indexPath.row ==8) {
        identifier =@"Blank";
    }
    else if (indexPath.row ==9) {
        identifier =@"RingerVolumeLabel";
    }
    else if (indexPath.row ==10) {
        identifier =@"RingerSelection";
    }
        
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row ==5) {
        
        RepeatViewController *repeatViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"repeat"];
        
        repeatViewController.delegate = self;
        
        repeatViewController.repeatValue = repeatValueForward;
        
        [[self navigationController] pushViewController:repeatViewController animated:YES];
    
    }else if (indexPath.row == 7) {
        
        DaysOfWeekViewController *daysOfWeekViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"daysOfWeek"];
        
        daysOfWeekViewController.delegate = self;
        
   //    daysOfWeekViewController.daySelected = dayOfWeekForward;
        
        [[self navigationController] pushViewController:daysOfWeekViewController animated:YES];
    }
}

@end



