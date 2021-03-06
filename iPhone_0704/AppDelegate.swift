//
//  AppDelegate.swift
//  iPhone_0704
//
//  Created by Takatoshi Watanabe on 2015/06/17.
//  Copyright (c) 2015年 渡辺 貴俊. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    private var viewVal: Int = 0 //※値が整数型の場合はInt
    var ViewVal: Int {//※値が整数型の場合はInt
        get {
            return viewVal //値を受け取る側にviewValを返す。
        }
        set {
            viewVal = newValue //引き渡す値をviewValに入れる。
        }
    }

    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    //アプリ閉じそうな時に呼ばれる
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    //アプリを閉じた時に呼ばれる
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    //アプリを開きそうな時に呼ばれる
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    //アプリを開いた時に呼ばれる
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    //フリックしてアプリを終了させた時に呼ばれる
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

