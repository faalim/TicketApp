//
//  TicketStore.h
//  TicketApp
//
//  Created by user247300 on 9/29/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TicketStore : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) double price;
@property (nonatomic, assign) NSInteger quantity;

- (instancetype)initWithName:(NSString *)name price:(double)price quantity:(NSInteger)quantity;


@end

NS_ASSUME_NONNULL_END
