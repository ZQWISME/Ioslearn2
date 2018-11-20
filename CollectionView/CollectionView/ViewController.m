//
//  ViewController.m
//  CollectionView
//
//  Created by stu1 on 2018/11/9.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *CollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *Layout = [[UICollectionViewFlowLayout alloc]init];
    CGFloat width  = [UIScreen mainScreen].bounds.size.width;
    CGFloat cellW  = (width - 10)*0.5;
    Layout.itemSize = CGSizeMake(cellW, cellW);
    Layout.minimumLineSpacing = 5;
    Layout.minimumInteritemSpacing = 5;
    self.CollectionView.collectionViewLayout = Layout;
//    self.CollectionView.backgroundColor = [UIColor blueColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"abc" forIndexPath:indexPath];
    return cell;
}
@end
