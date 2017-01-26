 //
//  MusicControlsInfo.m
//  
//
//  Created by Juan Gonzalez on 12/17/16.
//
//

#import "MusicControlsInfo.h"

@implementation MusicControlsInfo : NSObject

- (id) initWithDictionary: (NSDictionary *) dictionary {
    
    if (self = [super init]) {
        [self setArtist: [dictionary objectForKey:@"artist"]];
        [self setTrack: [dictionary objectForKey:@"track"]];
        [self setAlbum: [dictionary objectForKey:@"album"]];
        [self setTicker: [dictionary objectForKey:@"ticker"]];
        [self setCover: [dictionary objectForKey:@"cover"]];
        [self setDuration: 30];
        
        NSLog(@"Thattt: %@",[dictionary objectForKey:@"elapsed"]);
         NSLog(@"Thattt Int: %@",[[dictionary objectForKey:@"elapsed"] integerValue]);
        
        [self setElapsed: [[dictionary objectForKey:@"elapsed"] integerValue]];
        [self setIsPlaying: [[dictionary objectForKey:@"isPlaying"] boolValue]];
        [self setHasPrev: [[dictionary objectForKey:@"hasPrev"] boolValue]];
        [self setHasNext: [[dictionary objectForKey:@"hasNext"] boolValue]];
        [self setDismissable: [[dictionary objectForKey:@"dismissable"] boolValue]];
    }
    
    return self;
}

@end
