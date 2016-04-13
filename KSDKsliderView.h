//
//  KSDKsliderView.h
//  BankDemo
//
//  Created by kimi.zhang on 15/12/14.
//  Copyright © 2015年 kimi.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSDKsliderView : UIView

//根据子试图数量 圆形盘的图片 初始化
-(id)initWithFrame:(CGRect)frame andImage:(UIImage *)image;

//加子视图 图片 文字 大小
-(void)addSubViewWithSubView:(NSArray *)imageArray andTitle:(NSArray *)titleArray andSize:(CGSize)size andcenterImage:(UIImage *)centerImage;

@property (nonatomic,strong)void(^clickSomeOne)(NSString *);

@end
