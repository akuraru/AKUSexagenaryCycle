//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 P.I.akura. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger , TenHeavenlyStems) {
    甲,
    乙,
    丙,
    丁,
    戊,
    己,
    庚,
    辛,
    壬,
    癸,
};

typedef NS_ENUM(NSInteger , TwelveEarthlyBranches) {
    子,
    丑,
    寅,
    卯,
    辰,
    巳,
    午,
    未,
    申,
    酉,
    戌,
    亥,
};

@interface AKUSexagenaryCycle : NSObject
+ (TenHeavenlyStems)stemsYearForDate:(NSDate *)date;

+ (TwelveEarthlyBranches)branchesYearForDate:(NSDate *)date;

+ (TenHeavenlyStems)stemsMonthForDate:(NSDate *)date;

+ (TwelveEarthlyBranches)branchesMonthForDate:(NSDate *)date;
@end