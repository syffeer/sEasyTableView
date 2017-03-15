//
//  sEasyTableViewSection.h
//  sTableViewDome
//
//  Created by mofang2 on 17/3/14.
//  Copyright © 2017年 com.cfd.SaturnEasyTool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class sEasyTableViewRow;
@interface sEasyTableViewSection : NSObject
@property (nonatomic, strong)  id model;
@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, assign) CGFloat sectionHeaderHeight;
@property (nonatomic, assign) CGFloat sectionFooterHeight;

- (void)addRow:(sEasyTableViewRow *)row;
- (void)addRows:(NSArray <sEasyTableViewRow *> *)rows;
- (void)setRows:(NSArray <sEasyTableViewRow *> *)rows;
- (void)insertRow:(sEasyTableViewRow *)row atIndex:(NSInteger)index;

- (NSInteger)numberOfRows;
- (void)setNumberOfRows:(NSInteger)numberOfRows;

- (CGFloat)cellHeightAtRow:(NSInteger)row;
- (void)setCellHeight:(CGFloat)cellHeight atRow:(NSInteger)row;

- (sEasyTableViewRow *)rowAtIndex:(NSInteger)index;

@end
