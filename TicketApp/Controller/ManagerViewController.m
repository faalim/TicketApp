//
//  ManagerViewController.m
//  TicketApp
//
//  Created by user247300 on 9/28/23.
//

#import "ManagerViewController.h"
#import "HistoryTableViewController.h"
#import "ResetViewController.h"
@interface ManagerViewController ()

//@property (weak, nonatomic) IBOutlet UINavigationItem *backButton;


@end

@implementation ManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"History"]){

    HistoryTableViewController * htvc =  segue.destinationViewController;
    htvc.purchArray = self.storeticks.history;
}
    else if([segue.identifier isEqualToString:@"Reset"]){
    
    ResetViewController * rvc =  segue.destinationViewController;
        rvc.storeticks = self.storeticks;
        
    
}

}


@end
