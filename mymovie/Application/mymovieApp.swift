//
//  mymovieApp.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 03/02/24.
//

import SwiftUI

private let appFactory = AppFactory()
@main
struct mymovieApp: App {
    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(
                screenFactory: ScreenFactory(appFactory: appFactory),
                coordinator: AppCoordinator()
            )
            .preferredColorScheme(.dark)
            .onAppear {
                //NetworkMonitor.shared.startMonitoring()
            }
        }
    }
}
    
