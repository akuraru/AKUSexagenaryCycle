# AZDateBuilder

[![Build Status](https://travis-ci.org/azu/AZDateBuilder.png?branch=master)](https://travis-ci.org/azu/AZDateBuilder)

Simple NSDate Builder

## Installation

```ruby
pod 'AZDateBuilder', :git => 'https://github.com/azu/AZDateBuilder.git'
```

# Usage

    // 2010-1-1 11:10:05
    NSDate *date = [NSDate AZ_dateByUnit:@{
        AZ_DateUnit.year : @2010,
        AZ_DateUnit.month : @1,
        AZ_DateUnit.day : @1,
        AZ_DateUnit.hour : @11,
        AZ_DateUnit.minute : @10,
        AZ_DateUnit.second : @5
    }];

    // 2020-1-1 11:10:05
    NSDate *newDate = [date AZ_dateByUnit:@{
        AZ_DateUnit.year : @2020,
    }];


# LICENSE

MIT
