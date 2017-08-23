//
//  HotelsViewController.m
//  Get Hotels
//
//  Created by admin on 2017/8/21.
//  Copyright © 2017年 com. All rights reserved.
//

#import "HotelsViewController.h"
#import "HotelsTableViewCell.h"
@interface HotelsViewController()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (weak, nonatomic) IBOutlet UITextField *searchText;
- (IBAction)Btn1:(id)sender forEvent:(UIEvent *)event;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
- (IBAction)Btn2:(id)sender forEvent:(UIEvent *)event;
- (IBAction)Btn3:(id)sender forEvent:(UIEvent *)event;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
- (IBAction)Btn4:(id)sender forEvent:(UIEvent *)event;
@property (weak, nonatomic) IBOutlet UIImageView *image4;

@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property(strong,nonatomic) NSArray*arr;

@end

@implementation HotelsViewController

- (void)viewDidLoad {
    
    _arr=@[@{@"name":@"无锡君乐登酒店",@"addr":@"无锡",@" distance":@"距离我3公里",@" image":@"http://file27.mafengwo.net/M00/90/3E/wKgB6lPQq_KALsmEABOHjz8mBYs76.rbook_comment.w1024.jpeg",@"money":@"¥318"},];
    //[_arr addObject:hotelsModel];
    [super viewDidLoad];
    
        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [self naviConfig];
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
- (void)naviConfig {
    //设置导航条标题文字
    self.navigationItem.title = @"Get Hotels";
    //导航条的颜色（风格颜色）
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    //设置导航条标题颜色
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    //设置导航条是否隐藏
    self.navigationController.navigationBar.hidden = NO;
  }

//设置表格视图一共有多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


//设置表格视图中每一组由多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _arr.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HotelsTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"hotelscell" forIndexPath:indexPath];
    return cell;
}

    //HotelsViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"hotelscell" forIndexPath:indexPath];




- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
 
    
}



- (IBAction)Btn2:(id)sender forEvent:(UIEvent *)event {
}

- (IBAction)Btn3:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)Btn4:(id)sender forEvent:(UIEvent *)event {
}
@end

