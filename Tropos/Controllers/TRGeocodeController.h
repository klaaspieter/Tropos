@class CLLocation;

@interface TRGeocodeController : NSObject

- (RACSignal *)reverseGeocodeLocation:(CLLocation *)location;
- (RACSignal *)geocodeAddressString:(NSString *)string;

@end
