#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FIRInstallationsStorageProtocol <NSObject>

- (void)setObject:(id<NSSecureCoding>)object
           forKey:(NSString *)key
      accessGroup:(nullable NSString *)accessGroup
completionHandler:(void (^)(id<NSSecureCoding> _Nullable obj, NSError *_Nullable error))completionHandler;

- (void)getObjectForKey:(NSString *)key
           objectClass:(Class)objectClass
          accessGroup:(nullable NSString *)accessGroup
    completionHandler:(void (^)(id<NSSecureCoding> _Nullable object,
                              NSError *_Nullable error))completionHandler;

- (void)removeObjectForKey:(NSString *)key
              accessGroup:(nullable NSString *)accessGroup
        completionHandler:(void (^)(NSError *_Nullable error))completionHandler;

@end

NS_ASSUME_NONNULL_END 
