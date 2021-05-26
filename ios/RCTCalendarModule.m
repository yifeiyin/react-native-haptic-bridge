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
  self->patternData = [patternStr dataUsingEncoding:NSUTF8StringEncoding];
  
  // Create an error variable through which the engine returns error information.
  NSError* error = nil;

//  let audioSession = AVAudioSession.sharedInstance()
//  engine = try CHHapticEngine(audioSession: [AVAudioSession sharedInstance])

  
  // (1.) Create an instance of a haptic engine.
//  self->hapticEngine = [[CHHapticEngine alloc] initWithAudioSession:[AVAudioSession sharedInstance] error:&error];
  self->hapticEngine = [[CHHapticEngine alloc] initAndReturnError:&error];

  // (2.) Start the haptic engine.
  [self->hapticEngine startAndReturnError:&error];

  [self->hapticEngine playPatternFromData:self->patternData error:&error];
  
  RCTLogInfo(@"Error: %@", error);

}

@end
