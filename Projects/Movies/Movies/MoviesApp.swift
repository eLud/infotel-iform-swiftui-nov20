//
//  MoviesApp.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

@main
struct MoviesApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            MovieListView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    //handles events
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("See you soon")
    }

    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("memory warning")
    }

    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        print("woke up from background")
        completionHandler(.newData)
    }
}
