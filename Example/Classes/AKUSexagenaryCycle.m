//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 P.I.akura. All rights reserved.
//

#import <NSDate-Escort/NSDate+Escort.h>
#import "AKUSexagenaryCycle.h"


@implementation AKUSexagenaryCycle {

}
+ (TenHeavenlyStems)stemsYearForDate:(NSDate *)date {
     return (TenHeavenlyStems)(date.gregorianYear - 4) % 10;
}

+ (TwelveEarthlyBranches)branchesYearForDate:(NSDate *)date {
    return (TwelveEarthlyBranches)(date.gregorianYear - 4) % 12;
}

+ (TenHeavenlyStems)stemsMonthForDate:(NSDate *)date {
    return (TenHeavenlyStems)((date.gregorianYear % 5 * 12) + date.month + 3) % 10;
}

+ (TwelveEarthlyBranches)branchesMonthForDate:(NSDate *)date {
    return (TwelveEarthlyBranches)(date.month + 1) % 12;
}
@end