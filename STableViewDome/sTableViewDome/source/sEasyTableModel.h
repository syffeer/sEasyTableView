//
//  sEasyTableModel.h
//  sTableViewDome
//
//  Created by mofang2 on 17/3/14.
//  Copyright © 2017年 com.cfd.SaturnEasyTool. All rights reserved.
//

#import <UIKit/UIKit.h>
@class sEasyTableViewSection,sEasyTableViewRow;
@interface sEasyTableModel : NSObject

- (void)addSection:(sEasyTableViewSection *)section;
- (void)addSections:(NSArray <sEasyTableViewSection *>*)sections;
- (void)setSections:(NSArray <sEasyTableViewSection *>*)sections;
- (void)insertSection:(sEasyTableViewSection *)section atIndex:(NSUInteger)index;
- (void)removeSectionAtIndex:(NSUInteger)index;
- (void)removeSectionsAtIndexSet:(NSIndexSet *)indexSet;



- (sEasyTableViewSection *)sectionAtIndex:(NSInteger)index;
- (sEasyTableViewRow *)rowAtIndexPath:(NSIndexPath *)indexPath;
- (id)modelAtIndexPath:(NSIndexPath *)indexPath;
- (id)modelAtSection:(NSInteger)section;
- (NSString *)identifierAtIndexPath:(NSIndexPath *)indexPath;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;

- (CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath;
- (CGFloat)heightForHeaderAtSection:(NSUInteger)section;
- (CGFloat)heightForFooterAtSection:(NSUInteger)section;

@end
