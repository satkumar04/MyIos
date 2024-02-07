//
//  AppCoordinatorView.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import SwiftUI

struct AppCoordinatorView: View {
    private let screenFactory: ScreenFactory
    @ObservedObject private var coordinator: AppCoordinator

    init(screenFactory: ScreenFactory, coordinator: AppCoordinator) {
        self.screenFactory = screenFactory
        self.coordinator = coordinator
    }
    
    var body: some View {
        sceneView
            .onAppear {
                coordinator.handle(.showAuth)
            }
    }
    
    @ViewBuilder
    private var sceneView: some View {
        switch coordinator.state {
        case .idle:
            EmptyView()
            
        case .loading:
            ProgressView()
                .tint(.appAccent)
                .backgroundColor()
            
        case .auth:
            AuthCoordinatorView(
                AuthCoordinator(showMainSceneHandler: { coordinator.handle(.showMain) }),
                factory: screenFactory
            )
        case .main:
            AuthCoordinatorView(
                AuthCoordinator(showMainSceneHandler: { coordinator.handle(.showMain) }),
                factory: screenFactory
            )
//            MainCoordinatorView(
//                factory: screenFactory,
//                showAuthSceneHandler: { coordinator.handle(.showAuth) }
//            )
            
        }
    }
}


