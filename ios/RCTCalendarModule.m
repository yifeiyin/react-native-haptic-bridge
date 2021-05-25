//
//  RCTCalendarModule.m
//  myapp
//
//  Created by Yifei Yin on 2021-05-25.
//

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import <CoreHaptics/CoreHaptics.h>

#import "RCTCalendarModule.h"


@implementation RCTCalendarModule

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)patternStr location:(NSString *)location)
{
//  NSString * patternStr = @"{  \"Version\": 1.0,  \"Metadata\":        {            \"Project\" : \"Haptic Sampler\",            \"Created\" : \"5 June 2019\",            \"Description\" : \"A sequence of tightly spaced transient events and parameter variations to create a gravel-like texture.\"        },  \"Pattern\":   [    {      \"ParameterCurve\": {        \"ParameterID\": \"HapticIntensityControl\",        \"Time\": 0.0,        \"ParameterCurveControlPoints\":         [          {            \"Time\": 0,            \"ParameterValue\": 0.3          },          {            \"Time\": 1.0,            \"ParameterValue\": 0.6          },          {            \"Time\": 3.0,            \"ParameterValue\": 0.0          }        ]      }    },    {      \"Event\": {        \"Time\": 0.04,        \"EventType\": \"HapticTransient\",        \"EventParameters\":         [          {            \"ParameterID\": \"HapticIntensity\",            \"ParameterValue\": 0.7          },          {            \"ParameterID\": \"HapticSharpness\",            \"ParameterValue\": 0.3          }        ]      }    },    {      \"Event\": {        \"Time\": 0.05,        \"EventType\": \"HapticTransient\",        \"EventParameters\":         [          {            \"ParameterID\": \"HapticIntensity\",            \"ParameterValue\": 1.0          },          {            \"ParameterID\": \"HapticSharpness\",            \"ParameterValue\": 0.5          }        ]      }    }]}";
  self->patternData = [patternStr dataUsingEncoding:NSUTF8StringEncoding];
  
  // Create an error variable through which the engine returns error information.
  NSError* error = nil;

  // (1.) Create an instance of a haptic engine.
  self->hapticEngine = [[CHHapticEngine alloc] initAndReturnError:&error];

  // (2.) Start the haptic engine.
  [self->hapticEngine startAndReturnError:&error];

  [self->hapticEngine playPatternFromData:self->patternData error:&error];
  
  RCTLogInfo(@"Error: %@", error);

}

@end
