//
//  ViewController.m
//  Constraints
//
//  Created by Vikram Sinha on 18/06/2017.
//  Copyright © 2017 Blue Roof. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *arrItems;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrItems = @[@"Hello", @"world", @"vikram", @"this", @"side"];
}


#pragma pragma

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrItems.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UIView *vcCell = (UIView*)[cell viewWithTag:101];
    vcCell.layer.borderWidth = 1.0f;
    vcCell.layer.borderColor = [UIColor redColor].CGColor;
    vcCell.layer.cornerRadius = 10.0f;
    
    // change the below properties and analyse the results
    vcCell.clipsToBounds = YES;
    vcCell.layer.backgroundColor = [UIColor grayColor].CGColor;
    vcCell.backgroundColor = [UIColor magentaColor];
    // Setting the NO property shows the shadow but does not clip the subview's layer
    // but the YES property clips the subview's layer but does not show the shadow
    vcCell.layer.masksToBounds = NO;
    
    vcCell.layer.shadowOpacity = 1.0f;
    vcCell.layer.shadowColor = [UIColor whiteColor].CGColor;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
