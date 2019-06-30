//
//  ViewController.m
//  tryMVVM
//
//  Created by Анастасия Рябова on 30/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "ViewController.h"
#import "tableModelView.h"

// ViewController и есть View

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *newsTableView;
@property (nonatomic, strong) UILabel *titleLabel;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.newsTableView];
    
}


#pragma mark - Getter

- (UITableView *)newsTableView
{
    if (_newsTableView)
    {
        return _newsTableView;
    }
    
    _newsTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _newsTableView.delegate = self;
    _newsTableView.dataSource = self;
    
    return _newsTableView;
}


#pragma mark - TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    tableModelView *cell = [tableView dequeueReusableCellWithIdentifier:@"abcIdentifier"];
    if (!cell)
    {
        cell = [[tableModelView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abcIdentifier"];
    }
    cell.imageView.image = [UIImage imageNamed:@"rocket"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    
    
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
