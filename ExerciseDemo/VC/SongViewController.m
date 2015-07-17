//
//  SongViewController.m
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import "SongViewController.h"
#import "UIImageView+AFNetworking.h"
#import "SongBLL.h"

@interface SongViewController ()

@end

@implementation SongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Touch Action
- (IBAction)searchBtnTouch:(id)sender {
    [self.view endEditing:YES];
    SongBLL *songBLL = [SongBLL new];
    [songBLL searchSongInfoWithSongName:self.songName.text success:^(SongEntity *songEntity) {
        [self updateUIWithSongEntity:songEntity];
    } failure:^(NSError *error) {
        //handle error!
    }];
}

-(void)updateUIWithSongEntity:(SongEntity*)songEntity {
    [self.imageView setImageWithURL:[NSURL URLWithString:songEntity.photoPath] placeholderImage:[UIImage imageNamed:@"default.jpg"]];
    switch (songEntity.status) {
        case StatusNormal:
            self.statusLabel.text = @"返回正常"; break;
        case StatusReceiveSongNanmeNil:
            self.statusLabel.text = @"传过来的歌曲名为空"; break;
        case StatusNoRoomSingingTheSong:
            self.statusLabel.text = @"服务器返回数据失败"; break;
            
        default:
            self.statusLabel.text = @"未知错误"; break;
    }
    self.roomIdLabel.text = songEntity.roomId;
    self.nickNameLabel.text = songEntity.nickName;
}


- (IBAction)hideKeyboard:(id)sender {
    [self.view endEditing:YES];
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
