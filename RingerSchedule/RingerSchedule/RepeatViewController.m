//
//  RepeatViewController.m
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/2/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import "RepeatViewController.h"

@interface RepeatViewController ()

@end

@implementation RepeatViewController

@synthesize delegate;
@synthesize repeatValue;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *displayValue;
    
    static NSString *CellIdentifier = @"RepeatCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    
    if (indexPath.row == 0) {
        displayValue = @"Never";
    }
    if (indexPath.row == 1) {
        displayValue = @"Every Week";
    }
    if (indexPath.row == 2) {
        displayValue = @"Every 2 Weeks";
    }
    
    if (indexPath.row == 0 && [repeatValue  isEqual: @"Never"]) {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
    if (indexPath.row == 1 && [repeatValue  isEqual: @"Every Week"]) {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
    if (indexPath.row == 2 && [repeatValue  isEqual: @"Every 2 Weeks"]) {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }
    cell.textLabel.text = displayValue;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
 //   UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];

    
    if (indexPath.row == 0) {
        repeatValue = @"Never";
    }
    if (indexPath.row == 1) {
        repeatValue = @"Every Week";
        
    } else if (indexPath.row == 2) {
         repeatValue = @"Every 2 Weeks";
    }
   
    
    [self.delegate getRepeatValue:self didSelectRepeatValue:repeatValue];

    [[self navigationController] popViewControllerAnimated:YES];

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
