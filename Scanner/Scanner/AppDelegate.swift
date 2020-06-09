//
//  AppDelegate.swift
//  Scanner
//
//  Created by a.ghezal on 08.06.2020.
//  Copyright © 2020 a.ghezal. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let router = AppRouter()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow()
        router.start(window: window!)
        
        return true
    }


}

