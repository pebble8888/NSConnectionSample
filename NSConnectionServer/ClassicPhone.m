//
//  NSConnectionServer
//
//  Created by pebble8888 on 2016/06/19.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

#import "ClassicPhone.h"
#import <AppKit/AppKit.h>

@implementation ClassicPhone
- (NSString *)say:(NSString *)message
{
    NSLog(@"%@", message);
    
    return @"Hi Bob";
}
@end
