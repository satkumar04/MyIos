//
//  ScreenFactory.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import SwiftUI

final class ScreenFactory:AuthCoordinatorFactory{
    private let appFactory: AppFactory
    init(appFactory: AppFactory) {
            self.appFactory = appFactory
        }
    
}
  
// MARK: - WelcomeViewFactory

extension ScreenFactory: WelcomeViewFactory {
    func makeWelcomeView(coordinator: AuthCoordinatorProtocol) -> WelcomeView {
        let viewModel = WelcomeViewModel(coordinator: coordinator)
        let view = WelcomeView(viewModel: viewModel)

        return view
    }
}

