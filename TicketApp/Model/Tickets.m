//
//  Tickets.m
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "Tickets.h"


@implementation Tickets

-(instancetype)initWithName:(NSString*)name quantity:(int)quantity price:(double)price{
    self = [super init];
    if(self){
        self.name = name;
        self.quantity = quantity;
        self.price = price;
    }
    return self;
}

-(double)purchasedAmount: (double)amount{
    return self.price *amount;
}
-(void) newQuantity:(int) value {
    self.quantity -= value;
}


-(int)restock:(int) quant {
    return self.quantity+= quant;
}

@end
