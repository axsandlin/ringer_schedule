//
//  Schedule.m
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/3/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import "Schedule.h"

@implementation Schedule

@synthesize scheduleName;
@synthesize startTime;
@synthesize endTime;
@synthesize repeat;
@synthesize ringerVolume;

+ (id)sharedSchedule {
    
    static Schedule *sharedSchedule = nil;
    @synchronized(self) {
        if (sharedSchedule == nil)
            sharedSchedule = [[self alloc] init];
    }
    return sharedSchedule;
}

@end
