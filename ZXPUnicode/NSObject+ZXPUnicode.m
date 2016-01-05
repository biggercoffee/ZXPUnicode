//
//  NSObject+ZXPUnicode.m
//  House
//
//  blog : http://blog.csdn.net/biggercoffee
//  github : https://github.com/biggercoffee/ZXPUnicode

//  Created by coffee on 15/9/28.
//  Copyright © 2015年 cylkj. All rights reserved.
//

#import "NSObject+ZXPUnicode.h"

@implementation NSObject (ZXPUnicode)

+ (NSString *)stringByReplaceUnicode:(NSString *)string
{
    NSMutableString *convertedString = [string mutableCopy];
    [convertedString replaceOccurrencesOfString:@"\\U" withString:@"\\u" options:0 range:NSMakeRange(0, convertedString.length)];
    CFStringRef transform = CFSTR("Any-Hex/Java");
    CFStringTransform((__bridge CFMutableStringRef)convertedString, NULL, transform, YES);
    return convertedString;
}

@end
