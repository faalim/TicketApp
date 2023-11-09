//
//  DetailViewController.m
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "DetailViewController.h"


@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *purchaseDate;
@property (weak, nonatomic) IBOutlet UILabel *totalSum;
@property (weak, nonatomic) IBOutlet UILabel *totalBuy;
@property (weak, nonatomic) IBOutlet UILabel *tickName;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tickName.text = self.histItems.name;
    self.totalSum.text = [NSString stringWithFormat: @"%f", self.histItems.price];
    self.totalBuy.text = [ NSString stringWithFormat: @"%d", self.histItems.quantity];
    self.purchaseDate.text = self.histItems.timePurchased;
    
    
    
  //  self.storeticks.history
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
