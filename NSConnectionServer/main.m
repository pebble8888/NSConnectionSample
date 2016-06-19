//
//  main.m
//  NSConnectionServer
//
//  Created by pebble8888 on 2016/06/19.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ClassicPhone.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        id<Conversationable> phone = [[ClassicPhone alloc] init];
        NSConnection* connection = [[NSConnection alloc] init];
        [connection setRootObject:phone];
        BOOL ret = [connection registerName:@"com.pebble8888.server"];
        if (!ret){
            NSLog(@"error");
        }
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
