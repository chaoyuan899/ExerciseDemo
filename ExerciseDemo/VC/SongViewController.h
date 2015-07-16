//
//  SongViewController.h
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *songName;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomIdLabel;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;

@end
