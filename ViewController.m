//
//  ViewController.m
//  毛玻璃效果
//
//  Created by 时双齐 on 16/6/22.
//  Copyright © 2016年 MoreCookies. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()

@property(nonatomic,strong)UIImageView *backimage;//背景图

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.backimage = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.backimage.image = [UIImage imageNamed:@"timg.jpg"];
    
    //开启交互
    self.backimage.userInteractionEnabled = YES;
    
    [self.view addSubview:self.backimage];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static BOOL isEffect = YES;
    
    if (isEffect) {
        UIImage *sourceImage = [UIImage imageNamed:@"timg.jpg"];
        //一句代码搞定毛玻璃效果
        UIImage *lastImage = [sourceImage applyDarkEffect];
        self.backimage.image = lastImage;
        
    }else
    {
        self.backimage.image = [UIImage imageNamed:@"timg.jpg"];
    }
    
    isEffect = !isEffect;
    
}

@end
