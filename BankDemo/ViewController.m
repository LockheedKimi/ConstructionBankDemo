//
//  ViewController.m
//  BankDemo
//
//  Created by kimi.zhang on 15/12/14.
//  Copyright © 2015年 kimi.zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    KSDKsliderView *slider = [[KSDKsliderView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 300, 300) andImage:nil];
    [slider addSubViewWithSubView:nil andTitle:@[@"第一个",@"第二个",@"第三个",@"第四个",@"第五个",@"第六个"] andSize:CGSizeMake(60, 60) andcenterImage:nil];
    [self.view addSubview:slider];
    slider.clickSomeOne=^(NSString *str){
        NSLog(@"%@被点击了",str);
    };

}
//-(void)dateFormatter
//{
//    NSString* timeStr = @"2011-01-26 17:40:50";
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
//    [formatter setDateStyle:NSDateFormatterMediumStyle];
//    [formatter setTimeStyle:NSDateFormatterShortStyle];
//    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
//    
//    //设置时区,这个对于时间的处理有时很重要
//    //例如你在国内发布信息,用户在国外的另一个时区,你想让用户看到正确的发布时间就得注意时区设置,时间的换算.
//    //例如你发布的时间为2010-01-26 17:40:50,那么在英国爱尔兰那边用户看到的时间应该是多少呢?
//    //他们与我们有7个小时的时差,所以他们那还没到这个时间呢...那就是把未来的事做了
//    
//    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
//    [formatter setTimeZone:timeZone];
//    
//    NSDate* date = [formatter dateFromString:timeStr]; //------------将字符串按formatter转成nsdate
//    
//    NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
//    
//    NSString *nowtimeStr = [formatter stringFromDate:datenow];//----------将nsdate按formatter格式转成nsstring
//
//    //    时间转时间戳的方法:
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
//    NSLog(@"timeSp:%@",timeSp); //时间戳的值
//
//    //    时间戳转时间的方法
//    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:1451836800000/1000];
//    NSLog(@"1448509458000  = %@",confromTimesp);
//    
//    
//    
//    
//    
//    
//    NSDate* dateBB = [formatter dateFromString:@"1448509458000"];
//    NSDateFormatter * formatterAA= [[NSDateFormatter alloc ] init];
//    [formatterAA setDateFormat:@"YYYY-MM-dd"];
////    NSString *dateAA =  [formatter stringFromDate:[NSDate date]];
//    NSString *timeLocal = [[NSString alloc] initWithFormat:@"%@", dateBB];
//    NSLog(@"1448509458000＝＝＝＝%@", timeLocal);
//    
//   
//    
//    
//    
//    
//    
//    
//    
//    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
//    NSLog(@"confromTimespStr =  %@",confromTimespStr);
//
//    //    时间戳转时间的方法:
//    NSDateFormatter* formatter1 = [[NSDateFormatter alloc] init];
//    [formatter1 setDateStyle:NSDateFormatterMediumStyle];
//    [formatter1 setTimeStyle:NSDateFormatterShortStyle];
//    [formatter1 setDateFormat:@"yyyyMMddHHMMss"];
//    NSDate *date1 = [formatter dateFromString:@"1450687535"];
//    NSLog(@"date1:%@",date1);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
