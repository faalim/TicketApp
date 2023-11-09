//
//  DetailViewController.h
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import <UIKit/UIKit.h>
#import "StoreTickets.h"

#import "HistoryPurchasedItems.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic) HistoryPurchasedItems *histItems;

@end

NS_ASSUME_NONNULL_END
