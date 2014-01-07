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
    
    
 //   [_mySlider setThumbImage: [UIImage imageNamed:@"audio_volume_high.png"] forState:UIControlStateNormal];
    
}    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getRepeatValue:(RepeatViewController *)repeatViewController didSelectRepeatValue:(NSString *)repeatValue
{
 NSLog(@"This was returned from RepeatViewController %@",repeatValue);
}

- (IBAction)tappedSubmit:(id)sender {
    
    //If you push the view onto the navigation controller, you have to pop it from the stack.
    [[self navigationController] popViewControllerAnimated:YES];}

- (IBAction)tappedDelete:(id)sender {
    
    //If you push the view onto the navigation controller, you have to pop it from the stack.
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)tappedDone:(id)sender {
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
     return 11;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString *identifier;
    if (indexPath.row == 0) {
        identifier = @"ScheduleName";
    } else if (indexPath.row == 1) {
        identifier = @"Blank";
    }
    else if (indexPath.row ==2) {
        identifier =@"StartTimeDisp";
    }
    else if (indexPath.row ==3) {
        identifier =@"StartTimePicker";
    }
    else if (indexPath.row ==4) {
        identifier =@"EndTimeDisp";
    }
    else if (indexPath.row ==5) {
        identifier =@"EndTimePicker";
    }
    else if (indexPath.row ==6) {
        identifier =@"Blank";
    }
    else if (indexPath.row ==7) {
        identifier =@"Repeat";
    }
    else if (indexPath.row ==8) {
        identifier =@"Blank";
    }
    else if (indexPath.row ==9) {
        identifier =@"RingerVolume";
    }
    else if (indexPath.row ==10) {
        identifier =@"Slider";
    }

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    

    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row ==7) {
        
        RepeatViewController *repeatViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"repeat"];
        
        repeatViewController.delegate = self;
        
        [[self navigationController] pushViewController:repeatViewController animated:YES];
    }
    //the method is called when a row in the table has been tapped.  My app needs to display the schedule information in another view controller with an option to update or delete or cancel.
}

@end



