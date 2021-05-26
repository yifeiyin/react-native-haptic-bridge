//
//  RCTHapticModule.h
//  myapp
//
//  Created by Yifei Yin on 2021-05-25.
//

#ifndef RCTHapticModule_h
#define RCTHapticModule_h


#import <React/RCTBridgeModule.h>
@interface RCTHapticModule : NSObject <RCTBridgeModule>

{
  CHHapticEngine* hapticEngine;
  NSData* patternData;
}


@end

#endif /* RCTHapticModule_h */
