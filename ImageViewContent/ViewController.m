//
//  ViewController.m
//  ImageViewContent
//
//  Created by 刘浩宇 on 17/7/21.
//  Copyright © 2017年 GG. All rights reserved.
//


//    UIViewContentModeScaleToFill,
//    UIViewContentModeScaleAspectFit,
//    UIViewContentModeScaleAspectFill,
//    UIViewContentModeRedraw,
//    UIViewContentModeCenter,
//    UIViewContentModeTop,
//    UIViewContentModeBottom,
//    UIViewContentModeLeft,
//    UIViewContentModeRight,
//    UIViewContentModeTopLeft,
//    UIViewContentModeTopRight,
//    UIViewContentModeBottomLeft,
//    UIViewContentModeBottomRight,

/*
UIViewContentModeScaleAspectFill,
和
UIViewContentModeRedraw区别 自己找个图片试一试我这里没有试，因为比例差不多以至于这两个属性不是很明显*/

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *yuan;
@property (weak, nonatomic) IBOutlet UIImageView *chang;
@property (weak, nonatomic) IBOutlet UIImageView *gao;
@property (weak, nonatomic) IBOutlet UIImageView *zheng;


@property (nonatomic, assign) NSInteger content;


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) NSArray *labelArr;

@property (nonatomic, assign) BOOL highlight;

@end

@implementation ViewController

/*
 切换大图和切换图片属性观察不同比例的imageView学习属性显示的图片。
 注：大图的尺寸比imageView要大的多小图要比image小
 
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSString *string = @"GG？？？？？？";
    NSLog(@"%@",string);
    self.labelArr = @[@"UIViewContentModeScaleToFill",@"UIViewContentModeScaleAspectFit",@"UIViewContentModeScaleAspectFill",@"UIViewContentModeRedraw",@"UIViewContentModeCenter",@"UIViewContentModeTop",@"UIViewContentModeBottom",@"UIViewContentModeLeft",@"UIViewContentModeRight",@"UIViewContentModeTopLeft",@"UIViewContentModeTopRight",@"UIViewContentModeBottomLeft",@"UIViewContentModeBottomLeft"];
    self.titleLabel.text = _labelArr[0];

    ///VGGGGGGGGGGG？？？？？？
}

- (IBAction)click:(id)sender {
    
    self.content +=1;
    
    self.yuan.contentMode =self.content;
    self.chang.contentMode =self.content;
    self.gao.contentMode =self.content;
    self.zheng.contentMode = self.content;
    
    
    if (self.content == 12) {
        self.content = 0;
    }
    self.titleLabel.text = _labelArr[self.content];
    
    
}
- (IBAction)changeInage:(id)sender {
    
    self.highlight = !self.highlight;
    self.yuan.highlighted = self.highlight;
    self.chang.highlighted = self.highlight;
    self.gao.highlighted = self.highlight;
    self.zheng.highlighted = self.highlight;
}


/*scale的意思是：缩放，在contentMode中出现的话，就是要改变图形的大小了。
 aspect的意思是纵横的比例，在contentMode中的意思是保持图形的纵横比，保持图片不变形。
 
 scale aspect fill：在保持纵横比（aspect）的前提下，缩放图片（scale），使图片充满容器(fill)。
 scale aspect fit： 在保持纵横比（aspect）的前提下，缩放图片（scale），使图片在容器内都显示出来(fit)。
 scale to fill：缩放图片,使图片充满容器。因为没有aspect,所以是不保持纵横比的。


 
 //图片拉伸填充至整个UIImageView(图片可能会变形),这也是默认的属性,如果什么都不设置就是它在起作用
 UIViewContentModeScaleToFill,
 //图片拉伸至完全显示在UIImageView里面为止(图片不会变形)
 UIViewContentModeScaleAspectFit,
 //图片拉伸至图片的的宽度或者高度等于UIImageView的宽度或者高度为止.看图片的宽高哪一边最接近UIImageView的宽高,一个属性相等后另一个就停止拉伸.
 UIViewContentModeScaleAspectFill,
 //调用setNeedsDisplay 方法时,就会重新渲染图片
//下面的属性都是不会拉伸图片的
这样设置图片不会拉伸或者压缩，就是按照imageView的frame和图片的大小来居中显示的
这里有两种情况：
图片比view的区域更大。这个时候会截取图片的中间部位显示在frame区域里面。
图片比view的区域更小。这个时候图片会完整的显示在frame的中间位置。
UIViewContentModeRedraw,
//中间模式
UIViewContentModeCenter,
//顶部
UIViewContentModeTop,
//底部
UIViewContentModeBottom,
//左边
UIViewContentModeLeft,
//右边
UIViewContentModeRight,
//左上
UIViewContentModeTopLeft,
//右上
UIViewContentModeTopRight,
//左下
UIViewContentModeBottomLeft,
//右下
UIViewContentModeBottomRight,
};
*/




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
