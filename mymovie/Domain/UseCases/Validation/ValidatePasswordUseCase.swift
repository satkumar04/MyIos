//
//  ValidatePasswordUseCase.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import Foundation

final class ValidatePasswordUseCase {

    enum PasswordValidationError: Error {
        case invalidPassword
    }

    private enum Constants {
        static let minPasswordLength = 6
    }

    func execute(_ password: String) throws {
        guard password.count >= Constants.minPasswordLength else {
            throw PasswordValidationError.invalidPassword
        }
    }
}
