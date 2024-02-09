//
//  RegisterUseCase.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 09/02/24.
//

import Foundation
final class RegisterUserUseCase {
    
    private let authRepository: AuthRepository
    
    init(authRepository: AuthRepository) {
        self.authRepository = authRepository
    }
    
    func execute(_ user: UserRegister) async throws {
        try await authRepository.register(user: user)
    }
}
