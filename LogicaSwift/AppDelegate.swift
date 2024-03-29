//
//  AppDelegate.swift
//  LogicaSwift
//
//  Created by Kayky Casagrande on 26/12/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = ViewController()
		window?.makeKeyAndVisible()
		
		// Override point for customization after application launch.
		return true
	}
}

