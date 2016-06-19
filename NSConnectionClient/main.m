//
//  main.m
//  NSConnectionClient
//
//  Created by pebble8888 on 2016/06/19.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Conversationable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id proxy = [NSConnection rootProxyForConnectionWithRegisteredName:@"com.pebble8888.server" host:nil];
        [proxy setProtocolForProxy:@protocol(Conversationable)];
    
        if (proxy == nil){
            NSLog(@"error");
        }
    
        NSString* response = [proxy say:@"Hello Alice"];
        NSLog(@"%@", response);
    }
    return 0;
}
