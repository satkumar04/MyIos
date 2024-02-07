//
//  ScreenFactoryProtocols.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import SwiftUI

@MainActor
protocol WelcomeViewFactory {
    func makeWelcomeView(coordinator: AuthCoordinatorProtocol) -> WelcomeView
}
