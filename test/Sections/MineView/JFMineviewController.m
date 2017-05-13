//
//  JFMineviewController.m
//  test
//
//  Created by je_ffy on 16/8/24.
//  Copyright © 2016年 je_ffy. All rights reserved.
//

#import "JFMineviewController.h"
#import "JFReactiveCocoaViewController.h"
//
#import "JFSDCycleViewController.h"
#import "JFRounderCornerViewController.h"
#import "JFCoreAnimationViewController.h"
#import "JFFontViewController.h"
#import "JFArchiveViewController.h"
#import "JFFollowWeiboViewController.h"
#import "JFFollowStockViewController.h"

@interface JFMineviewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *dataArray;
@property (weak, nonatomic) UITableView *tableView;

@end

@implementation JFMineviewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[@"Test",
                       @"SDCycleCollectionView",
                       @"ReactiveCocoa",
                       @"RounderCorner",
                       @"Animation",
                       @"FontFamily",
                       @"Archive&&UnArchive",
                       @"FollowWeibo",
                       @"FollowStock"];
    self.view.backgroundColor = [UIColor yellowColor];
    [self.tableView reloadData];
}

- (UITableView *)tableView {
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
        tableView.delegate = self;
        tableView.dataSource = self;
        [self.view addSubview:_tableView = tableView];
    }
    
    return _tableView;
}

#pragma mark -
#pragma mark - UITableViewDelegate && UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = _dataArray[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _dataArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {

    }else if (indexPath.row == 1) {
        JFSDCycleViewController *VC = [[JFSDCycleViewController alloc] init];
        VC.title = @"DCycleView";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 2) {
        JFReactiveCocoaViewController *VC = [[JFReactiveCocoaViewController alloc] init];
        VC.title = @"ReactiveCocoa";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 3){
        JFRounderCornerViewController *VC = [[JFRounderCornerViewController alloc] init];
        VC.title = @"RounderCorner";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 4){
        JFCoreAnimationViewController *VC = [[JFCoreAnimationViewController alloc] init];
        VC.title = @"CoreAnimation";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 5){
        JFFontViewController *VC = [[JFFontViewController alloc] init];
        VC.title = @"FontFamily";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 6){
        JFArchiveViewController *VC = [[JFArchiveViewController alloc] init];
        VC.title = @"Archive";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 7){
        JFFollowWeiboViewController *VC = [[JFFollowWeiboViewController alloc] init];
        VC.title = @"仿微博";
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 8){
        JFFollowStockViewController *VC = [[JFFollowStockViewController alloc] init];
        VC.title = @"仿股票";
        [self.navigationController pushViewController:VC animated:YES];
    }
}

@end
