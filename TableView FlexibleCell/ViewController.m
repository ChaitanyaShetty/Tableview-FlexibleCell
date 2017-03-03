//
//  ViewController.m
//  TableView FlexibleCell
//
//  Created by test on 3/3/17.
//  Copyright © 2017 com.neorays. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
{
    NSArray *values;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView.estimatedRowHeight = 2.0;
    self.myTableView.rowHeight = UITableViewAutomaticDimension;
    self.myTableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    values = [NSArray arrayWithObjects:@"gfgfgjkjhssdfgjklkjhgfdsdfggfgfdssfdghjjfdsdfghjrewsxghsshvgffdfddfddsdsdsdfdfdffdddsdsdssddssgfgghhjhjkjkjkjkjkjhjgffghhjhjhgfffrrrddxdsssadhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj", @"dfghjjhjgffffffff", @"ffghjhhuuuhuuu", @"gjjjjnjjhgsgshshsgsggsgsggsggsgsuuwytgggg",  nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return values.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [self.myTableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.label.text = [values objectAtIndex:indexPath.row];
    return cell;
}

@end
