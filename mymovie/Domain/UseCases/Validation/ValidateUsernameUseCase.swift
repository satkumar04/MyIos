//
//  ValidateUsernameUseCase.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 07/02/24.
//

import Foundation
final class ValidateUsernameUseCase{
    
    enum UsernameValidationError: Error {
            case invalidUsername
        }

        private enum Constants {
            static let formatString = "SELF MATCHES %@"
            static let regex = "[a-zA-Z0-9]+"
        }

        func execute(_ username: String) throws {
            let usernamePredicate = NSPredicate(
                format: Constants.formatString,
                Constants.regex
            )
            
            guard usernamePredicate.evaluate(with: username) else {
                throw UsernameValidationError.invalidUsername
            }
        }
    }
