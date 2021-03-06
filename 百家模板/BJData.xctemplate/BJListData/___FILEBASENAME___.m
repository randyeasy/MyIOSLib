//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
#import "APITask.h"

#define REFRESH_API @"/user/info"

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)init
{
    self = [super init];
    if (self)
    {
//        [self loadCache];
    }
    return self;
}

- (void)doRefreshOperation:(TaskQueue *)taskQueue
{
    APITask *task = [[APITask alloc] initWithAPI:REFRESH_API postBody:nil];
    [taskQueue addTaskItem:task];
}

//- (void)doGetMoreOperation:(TaskQueue *)taskQueue
//{
//}
//
//- (void)doAddItemOperation:(TaskQueue *)taskQueue at:(NSInteger)index
//{
//}
//
//- (void)doRemoveItemOperation:(TaskQueue *)taskQueue at:(NSInteger)index
//{
//}
//
//- (void)doSaveItemOperation:(TaskQueue *)taskQueue at:(NSInteger)index
//{
//}

- (NSString *)getCacheKey
{
    return NSStringFromClass([self class]);
}

@end
