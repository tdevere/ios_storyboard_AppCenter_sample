//
//  AppDelegate.m
//  ios_Storyboard_ObjectiveC_AppCenter_Sample
//
//  Created by Tony DeVere on 11/18/21.
//

#import "AppDelegate.h"
@import AppCenter;
@import AppCenterCrashes;
@import AppCenterAnalytics;
@import AppCenterDistribute;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [MSACAppCenter setLogLevel:MSACLogLevelVerbose];

    //Add your App Secret here
    [MSACAppCenter start:@"" withServices:@[MSACCrashes.class, MSACAnalytics.class]];
    
     
    [MSACCrashes generateTestCrash]; //Put this into a button so that you can test it after the app has a chance to start.
    
    //Crashes.generateTestCrash()return true //This code is most likely responsible for the failure to send data to App Center. Calling crash after start so quickly is creating a race condition. App crashes before it can actually send data.
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
