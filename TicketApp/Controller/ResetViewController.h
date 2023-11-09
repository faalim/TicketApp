//
//  ResetViewController.h
//  TicketApp
//
//  Created by user247300 on 9/30/23.
//

#import <UIKit/UIKit.h>

#import "StoreTickets.h"
#import "ViewController.h"
#import "ManagerViewController.h"


NS_ASSUME_NONNULL_BEGIN





@interface ResetViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic) StoreTickets *storeticks;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property(nonatomic) NSMutableArray* ticketList;

@end

NS_ASSUME_NONNULL_END
