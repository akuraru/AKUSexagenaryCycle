//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import "Kiwi.h"
#import "AKUSexagenaryCycle.h"
#import "NSDate+AZDateBuilder.h"

SPEC_BEGIN(AKUSexagenaryCycleSpec)
describe(@"AKUSexagenaryCycle", ^{
    describe(@"stemsYearForDate:", ^{
        __block TenHeavenlyStems target;
        context(@"2005 is ", ^{
            beforeEach(^{
                target = [AKUSexagenaryCycle stemsYearForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2005,
                }]];
            });
            it(@"乙", ^{ [[theValue(target) should] equal:theValue(乙)]; });
        });
        context(@"4 + x is ", ^{
            __block NSUInteger x;
            beforeEach(^{
                x = arc4random_uniform(10000);
                target = [AKUSexagenaryCycle stemsYearForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @(4 + x),
                }]];
            });
            it(@"x % 10", ^{ [[theValue(target) should] equal:theValue(x % 10)]; });
        });
    });
    describe(@"branchesYearForDate:", ^{
        __block TwelveEarthlyBranches target;
        context(@"2005 is ", ^{
            beforeEach(^{
                target = [AKUSexagenaryCycle branchesYearForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2005,
                }]];
            });
            it(@"酉", ^{ [[theValue(target) should] equal:theValue(酉)]; });
        });
        context(@"4 + x is ", ^{
            __block NSUInteger x;
            beforeEach(^{
                x = arc4random_uniform(10000);
                target = [AKUSexagenaryCycle branchesYearForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @(4 + x),
                }]];
            });
            it(@"x % 12", ^{ [[theValue(target) should] equal:theValue(x % 12)]; });
        });
    });
    describe(@"stemsMonthForDate:", ^{
        __block TenHeavenlyStems target;
        context(@"2005/1 is ", ^{
            beforeEach(^{
                target = [AKUSexagenaryCycle stemsMonthForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2005,
                        AZ_DateUnit.month: @1,
                }]];
            });
            it(@"戊", ^{ [[theValue(target) should] equal:theValue(戊)]; });
        });
        context(@"7 + x is ", ^{
            __block NSUInteger x;
            beforeEach(^{
                x = arc4random_uniform(10000);
                target = [AKUSexagenaryCycle stemsMonthForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2005,
                        AZ_DateUnit.month: @(7 + x),
                }]];
            });
            it(@"x % 10", ^{ [[theValue(target) should] equal:theValue(x % 10)]; });
        });
    });
    describe(@"branchesMonthForDate:", ^{
        __block TwelveEarthlyBranches target;
        context(@"2005/1 is ", ^{
            beforeEach(^{
                target = [AKUSexagenaryCycle branchesMonthForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2005,
                        AZ_DateUnit.month: @1,
                }]];
            });
            it(@"寅", ^{ [[theValue(target) should] equal:theValue(寅)]; });
        });
        context(@"11 + x is ", ^{
            __block NSUInteger x;
            beforeEach(^{
                x = arc4random_uniform(10000);
                target = [AKUSexagenaryCycle branchesMonthForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2005,
                        AZ_DateUnit.month: @(11 + x),
                }]];
            });
            it(@"x % 12", ^{ [[theValue(target) should] equal:theValue(x % 12)]; });
        });
    });
    describe(@"branchesDayForDate:", ^{
        __block TwelveEarthlyBranches target;
        context(@"2014/1/3is ", ^{
            beforeEach(^{
                target = [AKUSexagenaryCycle branchesDayForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2014,
                        AZ_DateUnit.month: @1,
                        AZ_DateUnit.day: @3,
                }]];
            });
            it(@"戌", ^{ [[theValue(target) should] equal:theValue(戌)]; });
        });
        context(@"2014/1/5 is ", ^{
            beforeEach(^{
                target = [AKUSexagenaryCycle branchesDayForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2014,
                        AZ_DateUnit.month: @1,
                        AZ_DateUnit.day: @5,
                }]];
            });
            it(@"子", ^{ [[theValue(target) should] equal:theValue(子)]; });
        });
        context(@"11 + x is ", ^{
            __block NSUInteger x;
            beforeEach(^{
                x = arc4random_uniform(10000);
                target = [AKUSexagenaryCycle branchesDayForDate:[NSDate AZ_dateByUnit:@{
                        AZ_DateUnit.year: @2014,
                        AZ_DateUnit.month: @1,
                        AZ_DateUnit.day: @(5 + x),
                }]];
            });
            it(@"x % 12", ^{ [[theValue(target) should] equal:theValue(x % 12)]; });
        });
    });
});
SPEC_END