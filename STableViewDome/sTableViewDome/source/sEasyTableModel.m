//
//  sEasyTableModel.m
//  sTableViewDome
//
//  Created by mofang2 on 17/3/14.
//  Copyright © 2017年 com.cfd.SaturnEasyTool. All rights reserved.
//

#import "sEasyTableModel.h"
#import "sEasyTableViewSection.h"
#import "sEasyTableViewRow.h"

@interface sEasyTableModel ()
@property (nonatomic, strong) NSMutableArray *sectionArr;

@end

@implementation sEasyTableModel
- (void)addSection:(sEasyTableViewSection *)section{
    [self.sectionArr addObject:section];
}

- (void)addSections:(NSArray *)sections{
    [self.sectionArr addObjectsFromArray:sections];
}

- (void)setSections:(NSArray *)sections{
    self.sectionArr = [NSMutableArray arrayWithArray:sections];
}

- (void)insertSection:(sEasyTableViewSection *)section atIndex:(NSUInteger)index{
    NSAssert(index > self.sectionArr.count, @"没有这个位置");
    [self.sectionArr  insertObject:section atIndex:index];
}

- (void)removeSectionAtIndex:(NSUInteger)index{
     NSAssert(index > self.sectionArr.count, @"长度太长了");
    [self.sectionArr removeObjectAtIndex:index];
}

- (void)removeSectionsAtIndexSet:(NSIndexSet *)indexSet{
    [self.sectionArr removeObjectsAtIndexes: indexSet];
}



- (sEasyTableViewSection *)sectionAtIndex:(NSInteger)index{
    NSAssert(index > self.sectionArr.count, @"长度太长了");
    return self.sectionArr[index];
}

- (sEasyTableViewRow *)rowAtIndexPath:(NSIndexPath *)indexPath{
    NSAssert(indexPath.section > self.sectionArr.count, @"长度太长了");
    sEasyTableViewSection *section = self.sectionArr[indexPath.section];
    return [section rowAtIndex:indexPath.row];
}

- (id)modelAtIndexPath:(NSIndexPath *)indexPath{
    sEasyTableViewRow *row = [self rowAtIndexPath:indexPath];
    return row.model;
}

- (id)modelAtSection:(NSInteger)section{
    sEasyTableViewSection *sectionModel = (sEasyTableViewSection *)[self sectionAtIndex:section];
    if (sectionModel) {
        return sectionModel.model;
    } else {
        return nil;
    }
}

- (NSString *)identifierAtIndexPath:(NSIndexPath *)indexPath{
    sEasyTableViewRow *row = [self rowAtIndexPath:indexPath];
    if (row) {
            return row.identifier;
        }
    return nil;
}


- (NSInteger)numberOfSections{
    return self.sectionArr.count;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    sEasyTableViewSection *sectionModel = (sEasyTableViewSection *)[self sectionAtIndex:section];
    if (sectionModel) {
        return [sectionModel numberOfRows];
    }
    return 0;
}

- (CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    sEasyTableViewRow *row = [self rowAtIndexPath:indexPath];
    if (row) {
    return  row.cellHeight;
    }
    return CGFLOAT_MIN;
}

- (CGFloat)heightForHeaderAtSection:(NSUInteger)section{
    sEasyTableViewSection *sectionModel = (sEasyTableViewSection *)[self sectionAtIndex:section];
    return sectionModel.sectionHeaderHeight;
}

- (CGFloat)heightForFooterAtSection:(NSUInteger)section{
    sEasyTableViewSection *sectionModel = (sEasyTableViewSection *)[self sectionAtIndex:section];
    return sectionModel.sectionFooterHeight;
}


#pragma mark - setter && getter
- (NSMutableArray *)sectionArr{
    if (_sectionArr == nil) {
        _sectionArr = [NSMutableArray array];
    }
    return _sectionArr;
}
@end
