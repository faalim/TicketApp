//
//  StoreTickets.h
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import <Foundation/Foundation.h>
#import "Tickets.h"
#import "HistoryPurchasedItems.h"
NS_ASSUME_NONNULL_BEGIN


@interface StoreTickets : NSObject

@property (nonatomic,strong) NSMutableArray*  ticketList;
@property (nonatomic,strong) NSMutableArray * history;



@end

NS_ASSUME_NONNULL_END
