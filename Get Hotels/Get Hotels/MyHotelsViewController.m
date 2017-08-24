//
//  MyHotelsViewController.m
//  Get Hotels
//
//  Created by admin on 2017/8/22.
//  Copyright © 2017年 com. All rights reserved.
//

#import "MyHotelsViewController.h"
<<<<<<< HEAD
#import "MyHotelsTableViewCell.h"
@interface MyHotelsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIImageView *touxiangImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UILabel *dengjiLabel;
@property (strong, nonatomic) NSArray *myArr;
@property (weak, nonatomic) IBOutlet UITableView *myTabelView;
=======
#import "MyHotelTableViewCell.h"
#import "HMSegmentedControl.h"

@interface MyHotelsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myHotelTableView;
>>>>>>> cc32dc1804133965b65bfe0e77bcbea0e7a86351

@property (strong, nonatomic) NSArray *arr;
@property (strong, nonatomic)HMSegmentedControl *segmentedControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< HEAD
    // Do any additional setup after loading the view.
    _myArr = @[@{@"htImage":@"酒店",@"hotelsLabel":@"我的酒店"},@{@"htImage":@"航空",@"hotelsLabel":@"我的航空"},@{@"htImage":@"航空",@"hotelsLabel":@"我的消息"},@{@"htImage":@"设置",@"hotelsLabel":@"账户设置"},@{@"htImage":@"航空",@"hotelsLabel":@"使用协议"},@{@"htImage":@"联系客服",@"hotelsLabel":@"联系客服"}];
    _myTabelView.tableFooterView = [UIView new];
=======
    // Do any additional setup after loading the view, typically from a nib.
    _arr = @[@{@"title":@"",@"content":@""}];
    _myHotelTableView.tableFooterView = [UIView new];
    
    [self setNavigationItem];
    [self setSegment];
>>>>>>> cc32dc1804133965b65bfe0e77bcbea0e7a86351
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
<<<<<<< HEAD
//当前页面将要显示的时候，隐藏导航栏
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
=======
//设置导航栏样式
- (void)setNavigationItem{
    //设置导航条的颜色（风格颜色）
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:20/255.0 green:100/255.0 blue:255.0 alpha:1.0]];
    //设置导航条的标题颜色
    self.navigationController.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName : [UIColor whiteColor] };
    //实例化一个button 类型为UIButtonTypeSystem
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    //设置位置大小
    leftBtn.frame = CGRectMake(0, 0, 30, 30);
    //设置其背景图片为返回图片
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    //给按钮添加事件
    [leftBtn addTarget:self action:@selector(leftButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
}
//自定的返回按钮的事件
- (void)leftButtonAction: (UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
>>>>>>> cc32dc1804133965b65bfe0e77bcbea0e7a86351
}
#pragma mark - setSegment设置菜单栏
//初始化菜单栏的方法
- (void)setSegment{
    _segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:@[@"全部订单",@"可使用",@"已过期"]];
    //设置位置
    _segmentedControl.frame = CGRectMake(0, 60,UI_SCREEN_W, 40);
    //设置默认选中的项
    _segmentedControl.selectedSegmentIndex = 0;
    //设置菜单栏的背景色
    _segmentedControl.backgroundColor = [UIColor whiteColor];
    //设置线的高度
    _segmentedControl.selectionIndicatorHeight = 2.5f;
    //设置选中状态的样式
    _segmentedControl.selectionStyle = HMSegmentedControlSelectionStyleFullWidthStripe;
    //选中时的标记的位置
    _segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown;
    //设置未选中的标题样式
    _segmentedControl.titleTextAttributes = @{NSForegroundColorAttributeName:UIColorFromRGBA(230, 230, 230, 1),NSFontAttributeName:[UIFont boldSystemFontOfSize:15]};
    //选中时的标题样式
    _segmentedControl.selectedTitleTextAttributes = @{NSForegroundColorAttributeName:UIColorFromRGBA(0, 122, 250, 1),NSFontAttributeName:[UIFont boldSystemFontOfSize:15]};
    
    __weak typeof(self) weakSelf = self;
    [_segmentedControl setIndexChangeBlock:^(NSInteger index) {
        [weakSelf.myHotelTableView scrollRectToVisible:CGRectMake(UI_SCREEN_W * index, 0, UI_SCREEN_W, 200) animated:YES];
    }];
    
    [self.view addSubview:_segmentedControl];
}



//每组多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arr.count;
}

<<<<<<< HEAD
//设置表格视图一共有多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _myArr.count;
}


//设置表格视图中每一组由多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyHotelsTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"myHotelsCell" forIndexPath:indexPath];
    NSDictionary *dict = _myArr[indexPath.section];
    cell.htImage.image = [UIImage imageNamed:dict[@"htImage"]];
    cell.hotelsLabel.text = dict[@"hotelsLabel"];
    return cell;
}
//设置组的底部视图高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == 2) {
        return 5.f;
    }
    return 1.f;
}
//设置细胞高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.f;
}
//细胞选中后调用
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //取消细胞的选中状态
=======
//细胞长什么样
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"historyCell" forIndexPath:indexPath];
    NSDictionary *dict = _arr[indexPath.row];
    cell.textLabel.text = dict[@"myHotel"];
    return cell;
}
//设置每行高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200.f;
}
//细胞选中后调用
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
>>>>>>> cc32dc1804133965b65bfe0e77bcbea0e7a86351
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
