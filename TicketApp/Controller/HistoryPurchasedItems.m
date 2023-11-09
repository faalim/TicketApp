//
//  HistoryPurchasedItems.m
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "HistoryPurchasedItems.h"

@implementation HistoryPurchasedItems
-(instancetype)initWithName:(NSString*)name quantity:(int)quantity price:(double)price{
    
    self = [super initWithName:name quantity:quantity price:price]; // Call the superclass's initializer
        if (self) {
            self.timePurchased =  self.getCurrentDate; // Set the additional property
        }
        return self;
}

-(NSString*)getCurrentDate{
    NSString* dateString = [NSString stringWithFormat:@"%@",[NSDate date]];
    dateString = [dateString substringToIndex:(dateString.length - 5)];
    return dateString;
}

@end
