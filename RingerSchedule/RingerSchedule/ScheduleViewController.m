//
//  ScheduleViewController.m
//  RingerSchedule
//
//  Created by James Sandlin on 11/5/13.
//  Copyright (c) 2013 Aubri Sandlin. All rights reserved.
//

#import "ScheduleViewController.h"

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
    
   
}    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedSubmit:(id)sender {
    
    //If you push the view onto the navigation controller, you have to pop it from the stack.
    [[self navigationController] popViewControllerAnimated:YES];}

- (IBAction)tappedDelete:(id)sender {
    
    //If you push the view onto the navigation controller, you have to pop it from the stack.
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)tappedCancel:(id)sender {
    
    //If you push the view onto the navigation controller, you have to pop it from the stack.
    [[self navigationController] popViewControllerAnimated:YES];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
    //Need to return number of schedules. I put 5 as a place holder.
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ScheduleName"];
    
    return cell;
   
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //the method is called when a row in the table has been tapped.  My app needs to display the schedule information in another view controller with an option to update or delete or cancel.
}

@end



