//
//  ViewController.m
//  #4 Objc_UISwitch
//
//  Created by ChunYi on 2020/3/2.
//  Copyright © 2020 ES711-apple-2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_mSwitch setOn:NO animated:NO];
    _mLabel.text = @"關";
    
}

//點擊按鈕改變Switch開關並顯示於Label
- (IBAction)toClick:(id)sender {
    if(_mSwitch.on == YES){
        [_mSwitch setOn:NO animated:YES];
        _mLabel.text = @"mLabel關";
    }else{
        [_mSwitch setOn:YES animated:YES];
        _mLabel.text = @"mLabel開";
    }
}

//改變UISwitch，顯示Switch狀態（Boolen）
- (IBAction)switchChange:(id)sender {
    NSLog(@"UISwitch Status:%d", _mSwitch.on);
}

- (void)switch1Changed:(id) sender{
    // 取得這個 UISwtich 元件
    UISwitch *sw = sender;
    
    // 依據Switch狀態 來為底色變色
    if(sw.on){
        _mLabel.text = @"mLabel1開";
    }else{
        _mLabel.text = @"mLabel1關";
    }
}



@end
