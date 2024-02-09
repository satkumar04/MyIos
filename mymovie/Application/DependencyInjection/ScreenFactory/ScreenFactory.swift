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

// MARK: - PersonalInfoRegistrationViewFactory

extension ScreenFactory: PersonalInfoRegistrationViewFactory {
    func makePersonalInfoRegistrationView(
        coordinator: AuthCoordinatorProtocol
    ) -> PersonalInfoRegistrationView {
        let viewModel = PersonalInfoRegistrationViewModel(
            coordinator: coordinator,
            validateEmailUseCase: appFactory.makeValidateEmailUseCase(),
            validateUsernameUseCase: appFactory.makeValidateUsernameUseCase()
        )
        let view = PersonalInfoRegistrationView(viewModel: viewModel)

        return view
    }
}

// MARK: - PasswordRegistrationViewFactory

extension ScreenFactory: PasswordRegistrationViewFactory {
    func makePasswordRegistrationView(
        personalInfo: PersonalInfoViewModel,
        coordinator: AuthCoordinatorProtocol
    ) -> PasswordRegistrationView {
        let viewModel = PasswordRegistrationViewModel(
            personalInfo: personalInfo,
            coordinator: coordinator,
            registerUserUseCase: appFactory.makeRegisterUserUseCase(),
            validatePasswordUseCase: appFactory.makeValidatePasswordUseCase()
        )
        let view = PasswordRegistrationView(viewModel: viewModel)

        return view
    }
}

