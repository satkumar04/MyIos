//
//  PersonalInfoRegistrationViewModel.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 07/02/24.
//

import Foundation
final class PersonalInfoRegistrationViewModel:ViewModel{
    
    @Published private(set) var state: PersonalInfoRegistrationViewState
    private let coordinator: AuthCoordinatorProtocol
    private let validateEmailUseCase: ValidateEmailUseCase
    private let validateUsernameUseCase: ValidateUsernameUseCase

    init(
        coordinator: AuthCoordinatorProtocol,
        validateEmailUseCase: ValidateEmailUseCase,
        validateUsernameUseCase: ValidateUsernameUseCase
    ) {
        self.state = .init()
        self.coordinator = coordinator
        self.validateEmailUseCase = validateEmailUseCase
        self.validateUsernameUseCase = validateUsernameUseCase
    }
    
    
    func handle(_ event: PersonalInfoRegistrationViewEvent) {
        switch event {
        case .logInTapped:
            coordinator.showLogin()

        case .continueTapped:
            continueTapped()

        case .nameChanged(let name):
            state.name = name

        case .genderChanged(let gender):
            state.gender = gender

        case .usernameChanged(let username):
            usernameUpdated(username)

        case .emailChanged(let email):
            emailUpdated(email)

        case .birthdateChanged(let date):
            state.birthdate = date
        }
    }
    
}
