//
//  ViewController.m
//  TicketApp
//
//  Created by user247300 on 9/28/23.
//


#import "StoreTickets.h"
#import "ManagerViewController.h"
#import "ResetViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ticketTypeLabel;

@property (nonatomic) StoreTickets *itemsModel;


//@property (nonatomic,strong) Tickets *eachTicket;
@property (nonatomic) HistoryPurchasedItems *histBuy;
@property (weak, nonatomic) IBOutlet UILabel *totalPurchase;
@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;
//@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *userGuide;
@property bool newNumber;



@end

@implementation ViewController

-(StoreTickets *)itemsModel {
    if(_itemsModel==nil){
        _itemsModel = [[StoreTickets alloc]init];
    }
    return  _itemsModel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.newNumber= YES;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self.pickerView reloadAllComponents];
    self.totalPurchase.text = @"0";
    self.quantityLabel.text =@"0";
    
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{return 1;}

//reauired protocal for rows
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{return self.itemsModel.ticketList.count;}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    Tickets * tick= [self.itemsModel.ticketList objectAtIndex:row];
    //    //formating each row
    //
    NSString *ticketPick =  [NSString stringWithFormat: @"%@  Quant %d Price $ %f",
                             tick.name,
                             tick.quantity,
                             tick.price];
    
    return ticketPick;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.eachTicket =  [self.itemsModel.ticketList objectAtIndex:row];
    self.ticketTypeLabel.text = self.eachTicket.name;
    
    
}



- (IBAction)numPressed:(UIButton *)sender {
    if (self.newNumber){
        self.quantityLabel.text = sender.titleLabel.text;
        self.newNumber= NO;
    }else{
        //concat multiple numbers
        NSString * finalNum = [self.quantityLabel.text stringByAppendingString:sender.titleLabel.text];
        self.quantityLabel.text = finalNum;
        
    }
    
}

- (IBAction)purchased:(UIButton *)sender {
    double quantity =  [self.quantityLabel.text doubleValue];
    int stock = self.eachTicket.quantity;
    if (self.eachTicket ==nil || [self.quantityLabel.text isEqualToString:@"0"]) {
        self.userGuide.text = @"Please Select A Ticket";
        
    }
    else if (quantity<= stock ){
        double purchase = [self.eachTicket purchasedAmount: quantity];// Pass the quantity as a parameter
        
        [self.eachTicket newQuantity:quantity];
        
        self.totalPurchase.text = [NSString stringWithFormat: @"%f", purchase ];
        
        [self.pickerView reloadAllComponents];
        self.userGuide.text = @"Ticket Purchased";
        
        HistoryPurchasedItems *purchasedItem = [[HistoryPurchasedItems alloc] initWithName:self.eachTicket.name quantity:quantity price: purchase ];
        
        // Add the purchased item to the history array
        [self.itemsModel.history addObject:purchasedItem];
        
        
        
    }
    else if(quantity >stock){
        self.userGuide.text = @"Ticket out of Stock";}
    
    self.newNumber=YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"Manager"])
    {
        ManagerViewController *mvc =segue.destinationViewController;
        mvc.storeticks = self.itemsModel;
        
     
    }

    

}




@end
