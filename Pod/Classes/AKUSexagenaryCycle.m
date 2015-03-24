//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 P.I.akura. All rights reserved.
//

#import <NSDate-Escort/NSDate+Escort.h>
#import <AZDateBuilder/NSDate+AZDateBuilder.h>
#import "AKUSexagenaryCycle.h"


@implementation AKUSexagenaryCycle {

}
+ (TenHeavenlyStems)stemsYearForDate:(NSDate *)date {
    return (TenHeavenlyStems) (date.gregorianYear - 4) % 10;
}

+ (TwelveEarthlyBranches)branchesYearForDate:(NSDate *)date {
    return (TwelveEarthlyBranches) (date.gregorianYear - 4) % 12;
}

+ (TenHeavenlyStems)stemsMonthForDate:(NSDate *)date {
    return (TenHeavenlyStems) ((date.gregorianYear % 5 * 12) + date.month + 3) % 10;
}

+ (TwelveEarthlyBranches)branchesMonthForDate:(NSDate *)date {
    return (TwelveEarthlyBranches) (date.month + 1) % 12;
}

+ (TwelveEarthlyBranches)branchesDayForDate:(NSDate *)date {
    NSDate *currentDate = [NSDate AZ_dateByUnit:@{
            AZ_DateUnit.year : @2014,
            AZ_DateUnit.month : @1,
            AZ_DateUnit.day : @5,
    }];
    NSInteger days = [currentDate daysBeforeDate:date];
    NSInteger d = days % 12;
    return (TwelveEarthlyBranches) (d < 0 ? d + 12 : d);
}
@end