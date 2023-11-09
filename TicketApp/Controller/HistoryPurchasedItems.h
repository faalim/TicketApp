//
//  HistoryPurchasedItems.h
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "Tickets.h"

NS_ASSUME_NONNULL_BEGIN

@interface HistoryPurchasedItems : Tickets



@property (nonatomic, strong) NSString *timePurchased;

-(instancetype)initWithName:(NSString*)name quantity:(int)quantity price:(double)price ;
-(NSString*)getCurrentDate;

@end

NS_ASSUME_NONNULL_END
