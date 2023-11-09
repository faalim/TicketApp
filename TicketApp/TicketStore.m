//
//  TicketStore.m
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "TicketStore.h"

@implementation TicketStore

- (instancetype)initWithName:(NSString *)name price:(double)price quantity:(NSInteger)quantity {
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        self.quantity = quantity;
    }
    return self;
}



@end
