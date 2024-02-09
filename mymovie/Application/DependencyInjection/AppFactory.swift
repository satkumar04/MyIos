//
//  AppFactory.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import Foundation
final class AppFactory {
    private lazy var keychainService = KeychainService()
    private lazy var networkService = NetworkService(keychainService: keychainService)

    
    private lazy var authRepository = AuthRepositoryImplementation(
        networkService: networkService,
        keychainService: keychainService
    )
}

// MARK: - Validation

extension AppFactory {

    func makeValidateEmailUseCase() -> ValidateEmailUseCase {
        ValidateEmailUseCase()
    }

    func makeValidateUsernameUseCase() -> ValidateUsernameUseCase {
        ValidateUsernameUseCase()
    }

    func makeValidatePasswordUseCase() -> ValidatePasswordUseCase {
        ValidatePasswordUseCase()
    }
    
    func makeRegisterUserUseCase() -> RegisterUserUseCase {
        RegisterUserUseCase(authRepository: authRepository)
    }
}
