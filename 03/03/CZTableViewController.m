//3.向服务器发送请求http://localhost/videos.json，实现资料NO-03.gif的效果（请在项目中使用cocoaPods导入AFN和SDWebImage框架）。（30分）

#import "CZTableViewController.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"
#import "CZicon.h"
#import "CZCellTableViewCell.h"

@interface CZTableViewController ()
@property (nonatomic, strong) NSMutableArray *apps;
@end

@implementation CZTableViewController

- (void)viewDidLoad {
    [super viewDidLoad ];
    [self setupRefreshControl];

}

- (void)setupRefreshControl{
    // 创建下拉刷新控件
    UIRefreshControl *control = [[UIRefreshControl alloc] init];
    // 添加时间
    [control addTarget:self action:@selector(loadData) forControlEvents:UIControlEventValueChanged];
    // 设置菊花颜色
    control.tintColor = [UIColor colorWithWhite:0.702 alpha:1.000];
    // 设置文字
    control.attributedTitle = [[NSAttributedString alloc] initWithString:@"正在拼命刷新中..." attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18],NSForegroundColorAttributeName:[UIColor colorWithRed:1.000 green:0.502 blue:0.000 alpha:1.000]}];
    // 将刷新控件赋值给tableViewController
    self.refreshControl = control;
}
-(void)loadData
{
    [[[AFHTTPSessionManager manager] GET:@"http://192.168.42.8/videos.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        //遍历json数据,给模型赋值
        for (NSDictionary *dic in responseObject)
        {
            CZicon *icon = [CZicon iconWithDict:dic];
            [self.apps addObject:icon];
        }
        [self.tableView reloadData];
        [self.refreshControl endRefreshing];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
        [self.refreshControl endRefreshing];
    }] resume];
}
//每组有多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.apps.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //获得cell
    CZCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    //根据indexpath获得模型
    CZicon *app = self.apps[indexPath.row];
    cell.titleLable.text = app.desc;
    cell.nameLable.text = app.name;
    cell.teacherLable.text = app.teacher;
    [cell.iconView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://192.168.42.8/%@",app.imageURL]]];
    return cell;
}

-(NSMutableArray *)apps{
    if (_apps == nil) {
        _apps = [NSMutableArray array];
    }
    return _apps;
}
@end
