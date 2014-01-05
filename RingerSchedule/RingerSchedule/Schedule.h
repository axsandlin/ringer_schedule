//
//  Schedule.h
//  RingerSchedule
//
//  Created by Aubri Sandlin on 1/3/14.
//  Copyright (c) 2014 Aubri Sandlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Schedule : NSObject {
    
    NSMutableArray *dayArray;
    
}

@property (nonatomic, strong) NSString *scheduleName;
@property (nonatomic, strong) NSString *startTime;
@property (nonatomic, strong) NSString *endTime;
@property (nonatomic, strong) NSString *repeat;
@property (nonatomic, assign) int ringerVolume;

+ (id)sharedSchedule;

@end
