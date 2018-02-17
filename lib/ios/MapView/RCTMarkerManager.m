#import <React/RCTViewManager.h>
#import "RCTMarker.h"

@interface RCTMarkerManager : RCTViewManager
@end

@implementation RCTMarkerManager

- (UIView *)view {
    return [RCTMarker new];
}

RCT_EXPORT_MODULE(BaiduMapMarker)

RCT_EXPORT_VIEW_PROPERTY(coordinate, CLLocationCoordinate2D)
RCT_EXPORT_VIEW_PROPERTY(title, NSString)
RCT_EXPORT_VIEW_PROPERTY(color, UIColor)
RCT_EXPORT_VIEW_PROPERTY(image, NSString)
RCT_EXPORT_VIEW_PROPERTY(selected, BOOL)
RCT_EXPORT_VIEW_PROPERTY(draggable, BOOL)

RCT_EXPORT_VIEW_PROPERTY(onBaiduMapPress, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onBaiduMapCalloutPress, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onBaiduMapDrag, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onBaiduMapDragStart, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onBaiduMapDragEnd, RCTBubblingEventBlock)

@end
