//
//  sEasyTableViewSection.m
//  sTableViewDome
//
//  Created by mofang2 on 17/3/14.
//  Copyright © 2017年 com.cfd.SaturnEasyTool. All rights reserved.
//

#import "sEasyTableViewSection.h"
#import "sEasyTableViewRow.h"

@interface sEasyTableViewSection (){
    NSInteger   _numberOfRows;
}

@property (nonatomic, strong) NSMutableArray<sEasyTableViewRow *> *dateMarr;
@end

@implementation sEasyTableViewSection


- (void)addRow:(sEasyTableViewRow *)row{
    [self.dateMarr addObject:row];
}

- (void)addRows:(NSArray<sEasyTableViewRow *> *)rows{
    [self.dateMarr addObjectsFromArray:rows];
}

- (void)setRows:(NSArray <sEasyTableViewRow *> *)rows{
    self.dateMarr = [NSMutableArray arrayWithArray:rows];
}

- (void)insertRow:(sEasyTableViewRow *)row atIndex:(NSInteger)index{
    [self.dateMarr insertObject:row atIndex:index];
}


- (NSInteger)numberOfRows{
    return self.dateMarr.count;
}

- (void)setNumberOfRows:(NSInteger)numberOfRows{
    _numberOfRows = numberOfRows;
}

- (CGFloat)cellHeightAtRow:(NSInteger)row{
    NSAssert(self.dateMarr.count <= row, @"数组越界");
    sEasyTableViewRow *rowObj = self.dateMarr[row];
    return rowObj.cellHeight;
}

- (void)setCellHeight:(CGFloat)cellHeight atRow:(NSInteger)row{
    NSAssert(self.dateMarr.count <= row, @"数组越界");
    sEasyTableViewRow *rowObj = self.dateMarr[row];
    rowObj.cellHeight = row;
}

- (sEasyTableViewRow *)rowAtIndex:(NSInteger)index{
    return self.dateMarr[index];
}

#pragma mark - setter && getter
- (NSMutableArray *)dateMarr{
    if (_dateMarr == nil) {
        _dateMarr = [NSMutableArray array];
    }
    return _dateMarr;
}

@end
