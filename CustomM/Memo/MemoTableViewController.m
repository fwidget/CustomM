//
//  MemoTableViewController.m
//  CustomM
//
//  Created by KIMSEONGTAN on 2014/07/20.
//  Copyright (c) 2014年 growMerry. All rights reserved.
//

#import "MemoTableViewController.h"
#import "MemoTableViewCell.h"

@interface MemoTableViewController ()

@property(nonatomic, strong) NSArray *dataArr;

@end

@implementation MemoTableViewController

@synthesize dataArr = dataArr_;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // DB에서 데이터 취득
    self.dataArr = [NSArray arrayWithObjects:
                        [NSDictionary dictionaryWithObjectsAndKeys:@"title1",@"title",@"detail1",@"detail",@"2014/07/03 00:00",@"date", nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"title2",@"title",@"detail1",@"detail",@"2014/07/03 00:00",@"date", nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"title3",@"title",@"detail1",@"detail",@"2014/07/03 00:00",@"date", nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"title4",@"title",@"detail1",@"detail",@"2014/07/03 00:00",@"date", nil]
                        , nil];
    [self.tableView registerNib:[UINib nibWithNibName:@"MemoTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"memoCell"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
//    return [self.dataArr count];
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MemoTableViewCell *cell = (MemoTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"memoCell" forIndexPath:indexPath];

    if (nil == cell) {
        
    }
    
//    NSDictionary *memoItem = [self.dataArr objectAtIndex:indexPath.row];
//    cell.memoTitle = [memoItem objectForKey:@"title"];
//    cell.memoDetail = [memoItem objectForKey:@"detail"];
//    cell.memoDate = [memoItem objectForKey:@"date"];
//    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)popupMenu:(id)sender {
    TransitionDelegate *delegate = [[TransitionDelegate alloc]init];
    
    MenuViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"popMenu"];
    vc.view.backgroundColor = [UIColor clearColor];
    vc.modalPresentationStyle = UIModalPresentationCustom;
    [vc setTransitioningDelegate:delegate];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
