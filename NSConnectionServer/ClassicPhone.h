//
//  NSConnectionServer
//
//  Created by pebble8888 on 2016/06/19.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Conversationable.h"

@interface ClassicPhone : NSObject<Conversationable>
- (NSString *)say:(NSString *)message;
@end
