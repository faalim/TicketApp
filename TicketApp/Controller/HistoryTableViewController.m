//
//  HistoryTableViewController.m
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "HistoryTableViewController.h"
#import "DetailViewController.h"


@interface HistoryTableViewController ()<UITableViewDelegate,UITableViewDataSource>
//@property (weak, nonatomic) IBOutlet  UITableView *tableView;

@end

@implementation HistoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    return self.purchArray.count;
    //self.storeticks.history.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
   HistoryPurchasedItems *history =  [ self.purchArray objectAtIndex:indexPath.row] ;

    myCell.textLabel.text = history.name;
    myCell.detailTextLabel.text= [ NSString stringWithFormat:@"%d", history.quantity] ;

    return myCell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    DetailViewController * dcv =  segue.destinationViewController;
    
    HistoryPurchasedItems *histItems = [self.purchArray objectAtIndex:selectedIndexPath.row];

    dcv.histItems = histItems;
    

}


@end
