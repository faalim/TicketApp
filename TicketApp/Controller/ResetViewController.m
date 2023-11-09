//
//  ResetViewController.m
//  TicketApp
//
//  Created by user247300 on 9/30/23.
//

#import "ResetViewController.h"
#import "ViewController.h"
#import "ManagerViewController.h"

@interface ResetViewController ()

@property (nonatomic) Tickets *eachTicket;
@property (weak, nonatomic) IBOutlet UITextField *textboxQ;
@property (weak, nonatomic) IBOutlet UILabel *itemsSelect;
@property NSInteger  objIndx;



@end

@implementation ResetViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)exit:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
    {return 1;}

//reauired protocal for rows
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component

{          return self.storeticks.ticketList.count;}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    Tickets * tick= [self.storeticks.ticketList objectAtIndex:row];
//    //formating each row
//
    NSString *ticketPick =  [NSString stringWithFormat: @"%@  Quant %d Price $ %f",
        tick.name,
        tick.quantity,
        tick.price];
    return ticketPick;
    }

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.eachTicket =  [self.storeticks.ticketList objectAtIndex:row];
   
    self.objIndx = row;
    self.navigationItem.title=self.eachTicket.name;
}

- (IBAction)cancel:(UIButton *)sender {
    [self.textboxQ resignFirstResponder];
    self.eachTicket=nil;
    self.textboxQ.text = @"";
    self.navigationItem.title = @"";
    self.itemsSelect.text = @"Please Select An Item";
}

- (IBAction)okPressed:(UIButton *)sender {
    if (self.eachTicket ==nil)
    { self.itemsSelect.text = @"Please Select An Item";}
    
   else if ([self.textboxQ.text intValue]!= 0)
    {
       
        Tickets *ticks = [self.storeticks.ticketList objectAtIndex: self.objIndx];
        [ticks restock:([self.textboxQ.text intValue])];
        [self.storeticks.ticketList replaceObjectAtIndex:(self.objIndx) withObject:(ticks)];
        
    [self.pickerView reloadAllComponents];
    
        self.itemsSelect.text = [NSString stringWithFormat:@"%@ has been restocked", ticks.name];
        
        
    }
   else
   {self.textboxQ.placeholder = @"Please enter valid quantity";
    }
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
