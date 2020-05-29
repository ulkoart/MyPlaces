//
//  AppDelegate.swift
//  MyPlaces
//
//  Created by user on 20.05.2020.
//  Copyright © 2020 ulkoart. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let schemaVersion: UInt64 = 3
        
        let config = Realm.Configuration(
            schemaVersion: schemaVersion,
            migrationBlock: { migration, oldSchemaVersion in
                if (oldSchemaVersion < schemaVersion) {
                }
            })
        Realm.Configuration.defaultConfiguration = config
        
        return true
    }

}

