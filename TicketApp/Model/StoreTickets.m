//
//  StoreTickets.m
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import "StoreTickets.h"

@implementation StoreTickets
-(NSMutableArray*)ticketList{
    
    if (_ticketList == nil){
        
        Tickets* ticket1 =[[Tickets alloc]initWithName:@"Balcony level" quantity:12 price:100];
        
        Tickets* ticket2 =[[Tickets alloc]initWithName:@"Lower level" quantity:20 price:80];
        
        Tickets* ticket3 =[[Tickets alloc]initWithName:@"Courtside" quantity:15 price:200];
        
        _ticketList = [[NSMutableArray alloc]initWithObjects:ticket1,ticket2,ticket3, nil];
        
    }
    
    return _ticketList;
}

-(NSMutableArray *)history {
    if(_history ==nil)
    {
        _history =[[NSMutableArray alloc]init];
    }
    return _history;
    
}




@end
