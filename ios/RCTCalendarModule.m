//
//  RCTCalendarModule.m
//  myapp
//
//  Created by Yifei Yin on 2021-05-25.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
//#import <AVKit/AVKit.h>
#import <CoreHaptics/CoreHaptics.h>

#import "RCTCalendarModule.h"


@implementation RCTCalendarModule

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)patternStr location:(NSString *)location)
{
  NSError* error = nil;

  self->patternData = [patternStr dataUsingEncoding:NSUTF8StringEncoding];
  if (@available(iOS 13.0, *)) {
    self->hapticEngine = [[CHHapticEngine alloc] initAndReturnError:&error];

    [self->hapticEngine startAndReturnError:&error];

    [self->hapticEngine playPatternFromData:self->patternData error:&error];
  
    if (error != NULL) {
      RCTLogWarn(@"Error: %@", error);
    }

  } else {
    RCTLogInfo(@"Haptic engine is not supported");
  }
}

@end
