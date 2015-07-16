//
//  SongViewController.m
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import "SongViewController.h"
#import "SongBLL.h"

@interface SongViewController ()

@end

@implementation SongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Touch Action
- (IBAction)searchBtnTouch:(id)sender {
    if (self.songName.text != nil && ![self.songName.text isEqualToString:@""]) {
        SongBLL *songBLL = [SongBLL new];
        [songBLL searchSongInfoWithSongName:self.songName.text success:^(SongEntity *songEntity) {
            self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:songEntity.photoPath]]];
            self.statusLabel.text = [NSString stringWithFormat:@"%li",(long)songEntity.status];
            self.roomIdLabel.text = songEntity.roomId;
            self.nickNameLabel.text = songEntity.nickName;
        } failure:^(NSError *error) {
            
        }];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
