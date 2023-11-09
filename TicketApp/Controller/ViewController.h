//
//  ViewController.h
//  TicketApp
//
//  Created by user247300 on 9/28/23.
//

#import <UIKit/UIKit.h>
#import "Tickets.h"


@interface ViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>


@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (nonatomic) Tickets *eachTicket;


@end

