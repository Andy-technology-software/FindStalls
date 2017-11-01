//
//  RegistTypeViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "RegistTypeViewController.h"

#import "RegistTypeModel.h"

#import "RegistType0TableViewCell.h"

#import "RegistType1TableViewCell.h"
@interface RegistTypeViewController ()<UITableViewDataSource,UITableViewDelegate,RegistType1TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;
@property(nonatomic,strong)NSMutableArray* temDataSourceArr0;
@property(nonatomic,assign)BOOL isZ;
@property(nonatomic,copy)NSString* selectType;

@property (nonatomic, strong) UIView* nameBgView;
@property (nonatomic, strong) UIImageView* nameBgImageview;
@property (nonatomic, strong) UITextField* nameTF;
@property (nonatomic, strong) UIButton* typeBtn;
@property (nonatomic, strong) UIButton* typeBtn1;
@end

@implementation RegistTypeViewController

- (void)sendBackRegist {
    [(AppDelegate *)[UIApplication sharedApplication].delegate setRootVC];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self makeData];
    
    self.selectType = @"";
    
    [self createTableView];
}

- (void)makeData {
    self.dataSourceArr0 = [[NSMutableArray alloc] init];
    self.temDataSourceArr0 = [[NSMutableArray alloc] init];
    
    NSArray* tyA = [[NSArray alloc] initWithObjects:@"居民消费者",@"企事业单位消费者",@"商贩",@"市场经营单位", nil];
    for (int i = 0; i < 4; i++) {
        RegistTypeModel* model = [[RegistTypeModel alloc] init];
        model._id = @"";
        model._type = tyA[i];
        [self.dataSourceArr0 addObject:model];
        [self.temDataSourceArr0 addObject:model];
    }
    
}

#pragma mark - 初始化tableView
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [MyController isIOS7], [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7]) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_tableView];
}

#pragma mark - tableView行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (0 == section) {
        return self.dataSourceArr0.count;
    }
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        static NSString *cellIdentifier = @"RegistType0TableViewCell";
        RegistType0TableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell0) {
            cell0 = [[RegistType0TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        RegistTypeModel *model = nil;
        model = self.dataSourceArr0[indexPath.row];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }
    
    RegistType1TableViewCell *celll = [[RegistType1TableViewCell alloc] init];
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    celll.RegistType1TableViewCellDelegate = self;
    [celll configCellWithModel];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        RegistTypeModel *model = nil;
        if (indexPath.row < self.dataSourceArr0.count) {
            model = [self.dataSourceArr0 objectAtIndex:indexPath.row];
        }
        
        return [RegistType0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            RegistType0TableViewCell *cell = (RegistType0TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }
    
    return [RegistType1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        RegistType1TableViewCell *cell = (RegistType1TableViewCell *)sourceCell;
        [cell configCellWithModel];
    }];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (0 == section) {
        return 70;
    }
    return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.section) {
        self.isZ = !self.isZ;
        
        RegistTypeModel* model = self.temDataSourceArr0[indexPath.row];
        self.selectType = model._type;
        for (int i = 0; i < self.temDataSourceArr0.count; i++) {
            
            if (i == indexPath.row) {
                model._isSelected = YES;
            }else {
                model._isSelected = NO;
            }
        }
        self.dataSourceArr0 = [[NSMutableArray alloc] initWithCapacity:0];
        [_tableView reloadSections:[[NSIndexSet alloc]initWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    self.nameBgView = [MyController viewWithFrame:CGRectMake(12, 0, [MyController getScreenWidth] - 24, 70)];
    self.nameBgView.backgroundColor = [UIColor whiteColor];
    
    self.nameBgImageview = [MyController createImageViewWithFrame:self.nameBgView.frame ImageName:@"圆角矩形-2"];
    [self.nameBgView addSubview:self.nameBgImageview];
    
    [self.nameBgImageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(20);
        make.height.mas_offset(51);
    }];
    
    self.typeBtn = [MyController createButtonWithFrame:self.nameBgView.frame ImageName:@"chevron-thin-left-拷贝-2" Target:self Action:@selector(typeBtnClick) Title:nil];
    if(self.isZ) {
        self.typeBtn = [MyController createButtonWithFrame:self.nameBgView.frame ImageName:@"更多" Target:self Action:@selector(typeBtnClick) Title:nil];
    }else {
        self.typeBtn = [MyController createButtonWithFrame:self.nameBgView.frame ImageName:@"chevron-thin-left-拷贝-2" Target:self Action:@selector(typeBtnClick) Title:nil];
    }
    [self.nameBgView addSubview:self.typeBtn];
    
    [self.typeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.nameBgImageview.mas_right).mas_offset(-15);
        make.centerY.mas_equalTo(self.nameBgImageview.mas_centerY);
        make.height.mas_offset(20);
        make.width.mas_offset(20);
    }];
    
    self.nameTF = [MyController createTextFieldWithFrame:self.nameBgView.frame placeholder:@"用户类型" passWord:NO leftImageView:nil rightImageView:nil Font:14];
    self.nameTF.text = self.selectType;
    [self.nameBgView addSubview:self.nameTF];
    
    [self.nameTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameBgImageview.mas_left).mas_offset(20);
        make.top.mas_equalTo(self.nameBgImageview);
        make.height.mas_equalTo(self.nameBgImageview);
        make.right.mas_equalTo(self.typeBtn.mas_left).mas_offset(-10);
    }];
    
    self.typeBtn1 = [MyController createButtonWithFrame:self.nameBgView.frame ImageName:nil Target:self Action:@selector(typeBtnClick) Title:nil];
    [self.nameBgView addSubview:self.typeBtn1];
    
    [self.typeBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_offset(70);
    }];
    
    return self.nameBgView;
}

- (void)typeBtnClick {
    if (!self.isZ) {
        self.dataSourceArr0 = [[NSMutableArray alloc] initWithCapacity:0];
    }else {
        [self.dataSourceArr0 addObjectsFromArray:self.temDataSourceArr0];
    }
    self.isZ = !self.isZ;
    [_tableView reloadSections:[[NSIndexSet alloc]initWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
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
