//
//  sEasyTableViewRow.h
//  sTableViewDome
//
//  Created by mofang2 on 17/3/14.
//  Copyright © 2017年 com.cfd.SaturnEasyTool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface sEasyTableViewRow : NSObject
@property (nonatomic, strong) id model;
@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, assign)  CGFloat cellHeight;

- (instancetype)initWithModel:(id)model;
@end
