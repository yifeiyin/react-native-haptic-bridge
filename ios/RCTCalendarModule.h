//
//  RCTCalendarModule.h
//  myapp
//
//  Created by Yifei Yin on 2021-05-25.
//

#ifndef RCTCalendarModule_h
#define RCTCalendarModule_h


#import <React/RCTBridgeModule.h>
@interface RCTCalendarModule : NSObject <RCTBridgeModule>

{
  CHHapticEngine* hapticEngine;
  NSData* patternData;
}


@end

#endif /* RCTCalendarModule_h */
