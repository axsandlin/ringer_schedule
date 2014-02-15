//
//  DaysOfWeekViewController.m
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/14/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import "DaysOfWeekViewController.h"

@interface DaysOfWeekViewController ()

@end

@implementation DaysOfWeekViewController

@synthesize monday;
@synthesize tuesday;
@synthesize wednesday;
@synthesize thursday;
@synthesize friday;
@synthesize saturday;
@synthesize sunday;
@synthesize daySelected;
@synthesize delegate;

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
    
    [self.navigationItem setHidesBackButton:YES];
    
    NSLog(@"The value of daySelected is %@", daySelected);
    
    
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

- (IBAction)tappedDone:(id)sender {
    
    NSString *dayString = @" ";
    
    if (monday) {
        dayString = [dayString stringByAppendingString:@"M "];
    }
    if (tuesday) {
        dayString = [dayString stringByAppendingString:@"Tu "];
    }
    if (wednesday){
        dayString = [dayString stringByAppendingString:@"W "];
    }
    if (thursday) {
        dayString = [dayString stringByAppendingString:@"Th "];
    }
    if (friday) {
        dayString = [dayString stringByAppendingString:@"F "];
    }
    if (saturday) {
        dayString = [dayString stringByAppendingString:@"Sa "];
    }
    if (sunday) {
        dayString = [dayString stringByAppendingString:@"Su "];
    }
    
    daySelected = dayString;
    
    [self.delegate getDaysOfWeek:self didSelectDaysOfWeek:daySelected];
    [[self navigationController] popViewControllerAnimated:YES];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *displayValue;
    
    static NSString *CellIdentifier = @"DayCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    if (indexPath.row == 0) {
        displayValue = @"Monday";
        
    }if (indexPath.row == 1) {
        displayValue = @"Tuesday";
        
    } else if (indexPath.row == 2) {
        displayValue = @"Wednesday";
    }
    else if (indexPath.row ==3) {
        displayValue = @"Thursday";
    }
    else if (indexPath.row ==4) {
        displayValue =@"Friday";
    }
    else if (indexPath.row ==5) {
        displayValue =@"Saturday";
    }
    else if (indexPath.row ==6) {
        displayValue =@"Sunday";
    }
    
    if (daySelected != nil) {
    
        if (indexPath.row == 0) {
            if ([daySelected rangeOfString:@"M"].location == NSNotFound){
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else {
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                monday = YES;
            }
        }
        if (indexPath.row == 1) {
            if ([daySelected rangeOfString:@"Tu"].location == NSNotFound) {
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else {
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                tuesday = YES;
            }
        }
        if (indexPath.row == 2) {
            if ([daySelected rangeOfString:@"W"].location == NSNotFound) {
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else{
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                wednesday = YES;
            }
        }
        if (indexPath.row == 3) {
            if ([daySelected rangeOfString:@"Th"].location == NSNotFound) {
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else{
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                thursday = YES;
            }
        }
        if (indexPath.row == 4) {
            if ([daySelected rangeOfString:@"F"].location == NSNotFound) {
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else{
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                friday = YES;
            }
        }
        if (indexPath.row == 5) {
            if ([daySelected rangeOfString:@"Sa"].location == NSNotFound) {
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else{
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                saturday = YES;
            }
        }
        if (indexPath.row == 6) {
            if ([daySelected rangeOfString:@"Su"].location == NSNotFound) {
                [cell setAccessoryType:UITableViewCellAccessoryNone];
            }
            else{
                [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
                sunday = YES;
            }
        }
    }
        cell.textLabel.text = displayValue;
    
        return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    
    
    if (indexPath.row == 0) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
           [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            monday = YES;
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            monday = NO;
        }
    }
    if (indexPath.row == 1) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            tuesday = YES;
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            tuesday = NO;
        }
    }
    if (indexPath.row == 2) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            wednesday = YES;
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            wednesday = NO;
        }
    }
    if (indexPath.row ==3) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            thursday = YES;
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            thursday = NO;
        }
    }
    if (indexPath.row ==4) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            friday = YES;
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            friday = NO;
        }
    }
    if (indexPath.row ==5) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            saturday = YES;
            
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            saturday = NO;
        }
    }
    if (indexPath.row ==6) {
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
            sunday = YES;
        }else if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
            sunday = NO;
        }
    }

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

