//
//  MyHotelsViewController.m
//  Get Hotels
//
//  Created by admin on 2017/8/22.
//  Copyright © 2017年 com. All rights reserved.
//

#import "MyHotelsViewController.h"
#import "MyHotelsTableViewCell.h"
@interface MyHotelsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIImageView *touxiangImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UILabel *dengjiLabel;
@property (strong, nonatomic) NSArray *myArr;
@property (weak, nonatomic) IBOutlet UITableView *myTabelView;

@end

@implementation MyHotelsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myArr = @[@{@"htImage":@"酒店",@"hotelsLabel":@"我的酒店"},@{@"htImage":@"航空",@"hotelsLabel":@"我的航空"},@{@"htImage":@"航空",@"hotelsLabel":@"我的消息"},@{@"htImage":@"设置",@"hotelsLabel":@"账户设置"},@{@"htImage":@"航空",@"hotelsLabel":@"使用协议"},@{@"htImage":@"联系客服",@"hotelsLabel":@"联系客服"}];
    _myTabelView.tableFooterView = [UIView new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//当前页面将要显示的时候，隐藏导航栏
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
