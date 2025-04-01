#import <Foundation/Foundation.h>
#import "FirebaseInstallations/Source/Library/InstallationsStore/FIRInstallationsStorageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface FIRInstallationsMemoryStore : NSObject <FIRInstallationsStorageProtocol>

- (instancetype)initWithService:(NSString *)service;

@end

NS_ASSUME_NONNULL_END 