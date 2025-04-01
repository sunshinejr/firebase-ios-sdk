#import "FirebaseInstallations/Source/Library/InstallationsStore/FIRInstallationsMemoryStore.h"

@interface FIRInstallationsMemoryStore ()
@property(nonatomic, strong) NSMutableDictionary<NSString *, id<NSSecureCoding>> *storage;
@property(nonatomic, copy) NSString *serviceName;
@end

@implementation FIRInstallationsMemoryStore

- (instancetype)initWithService:(NSString *)service {
  self = [super init];
  if (self) {
    _storage = [NSMutableDictionary dictionary];
    _serviceName = [service copy];
  }
  return self;
}

- (void)setObject:(id<NSSecureCoding>)object
           forKey:(NSString *)key
      accessGroup:(nullable NSString *)accessGroup
completionHandler:(void (^)(id<NSSecureCoding> _Nullable obj, NSError *_Nullable error))completionHandler {
    if (!key) {
        completionHandler ? completionHandler(nil, nil) : nil;
        return;
    }

    if (object) {
        self.storage[key] = object;
    } else {
        [self.storage removeObjectForKey:key];
    }
    
    completionHandler ? completionHandler(object, nil) : nil;
}

- (void)getObjectForKey:(NSString *)key
           objectClass:(Class)objectClass
          accessGroup:(nullable NSString *)accessGroup
    completionHandler:(void (^)(id<NSSecureCoding> _Nullable object,
                              NSError *_Nullable error))completionHandler {
    if (!key || !objectClass) {
        completionHandler ? completionHandler(nil, nil) : nil;
        return;
    }

    id object = self.storage[key];
    if (object && ![object isKindOfClass:objectClass]) {
        completionHandler ? completionHandler(nil, nil) : nil;
        return;
    }

    completionHandler ? completionHandler(object, nil) : nil;
}

- (void)removeObjectForKey:(NSString *)key
              accessGroup:(nullable NSString *)accessGroup
        completionHandler:(void (^)(NSError *_Nullable error))completionHandler {
    if (!key) {
        completionHandler ? completionHandler(nil) : nil;
        return;
    }

    [self.storage removeObjectForKey:key];
    completionHandler ? completionHandler(nil) : nil;
}

@end 
