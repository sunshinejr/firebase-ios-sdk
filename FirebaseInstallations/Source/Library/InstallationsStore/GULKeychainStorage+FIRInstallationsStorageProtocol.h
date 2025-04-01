#import <GoogleUtilities/GULKeychainStorage.h>
#import "FirebaseInstallations/Source/Library/InstallationsStore/FIRInstallationsStorageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface GULKeychainStorage (FIRInstallationsStorageProtocol) <FIRInstallationsStorageProtocol>
@end

NS_ASSUME_NONNULL_END 