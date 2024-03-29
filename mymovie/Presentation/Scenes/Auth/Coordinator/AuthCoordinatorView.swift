//
//  AuthCoordinatorView.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import SwiftUI

struct AuthCoordinatorView: View {
    private let factory: AuthCoordinatorFactory
    @ObservedObject private var coordinator: AuthCoordinator
    
    init(_ coordinator: AuthCoordinator, factory: AuthCoordinatorFactory) {
        self.factory = factory
        self.coordinator = coordinator
    }
    
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            factory.makeWelcomeView(coordinator: coordinator)
                .navigationDestination(for: AuthCoordinator.Screen.self) {
                    destination($0)
                }
        }
    }
    
    @ViewBuilder
    private func destination(_ screen: AuthCoordinator.Screen) -> some View {
       
    }
    
}
