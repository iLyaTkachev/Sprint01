//
//  ViewController.m
//  Sprint01
//
//  Created by iLya Tkachev on 3/17/17.
//  Copyright © 2017 iLya Tkachev. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myTableView = [[self makeTableView]autorelease];
    [self.view addSubview:self.myTableView];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
    self.dataArray = [[[NSMutableArray alloc] initWithContentsOfFile:path]autorelease];
}

-(UITableView *)makeTableView
{
    CGFloat x = 0;
    CGFloat y = 50;
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height-50;
    CGRect tableFrame = CGRectMake(x, y, width, height);
    
    UITableView *tableView = [[[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain]autorelease];
    
    tableView.rowHeight = 50;
    tableView.scrollEnabled = YES;
    tableView.showsVerticalScrollIndicator = YES;
    tableView.userInteractionEnabled = YES;
    tableView.bounces = YES;
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    return tableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"] autorelease];
    }
    cell.myTitleLabel.text=[[_dataArray objectAtIndex:indexPath.row] objectForKey:@"title"];
    cell.mySubtitleLabel.text=[[_dataArray objectAtIndex:indexPath.row] objectForKey:@"subtitle"];
    cell.myImageView.image = [UIImage imageNamed:[[_dataArray objectAtIndex:indexPath.row] objectForKey:@"image_name"]];
    return cell;
}
-(void) dealloc{
    [super dealloc];
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
