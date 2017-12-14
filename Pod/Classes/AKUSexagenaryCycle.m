//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 P.I.akura. All rights reserved.
//

#import "AKUSexagenaryCycle.h"

@implementation AKUSexagenaryCycle {

}
+ (TenHeavenlyStems)stemsYearForDate:(NSDate *)date {
    NSCalendar *currentCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [currentCalendar components:NSCalendarUnitEra | NSCalendarUnitYear fromDate:date];
    return (TenHeavenlyStems) ([components year] - 4) % 10;
}

+ (TwelveEarthlyBranches)branchesYearForDate:(NSDate *)date {
    NSCalendar *currentCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [currentCalendar components:NSCalendarUnitEra | NSCalendarUnitYear fromDate:date];
    return (TwelveEarthlyBranches) ([components year] - 4) % 12;
}

+ (TenHeavenlyStems)stemsMonthForDate:(NSDate *)date {
    NSCalendar *currentCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [currentCalendar components:NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth fromDate:date];
    return (TenHeavenlyStems) (([components year] % 5 * 12) + [components month] + 3) % 10;
}

+ (TwelveEarthlyBranches)branchesMonthForDate:(NSDate *)date {
    NSCalendar *currentCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [currentCalendar components:NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth fromDate:date];
    return (TwelveEarthlyBranches) ([components month] + 1) % 12;
}

+ (TwelveEarthlyBranches)branchesDayForDate:(NSDate *)date {
    NSCalendar *currentCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = 2014;
    dateComponents.month = 1;
    dateComponents.day = 5;
    NSDate *currentDate = [currentCalendar dateFromComponents:dateComponents];
    
    
    NSDateComponents *components = [currentCalendar components:NSCalendarUnitDay fromDate:currentDate toDate:date options:0];
    NSInteger days = [components day];
    NSInteger d = days % 12;
    return (TwelveEarthlyBranches) (d < 0 ? d + 12 : d);
}
@end
