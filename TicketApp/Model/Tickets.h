//
//  Tickets.h
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tickets : NSObject

@property(nonatomic)NSString* name;
@property(nonatomic)int quantity;
@property(nonatomic)float price;
-(instancetype)initWithName:(NSString*)name quantity:(int)quantity price:(double)price;

-(double)purchasedAmount: (double) amount;
-(void)newQuantity:(int) value;
-(int)restock:(int) quant;

@end

NS_ASSUME_NONNULL_END
