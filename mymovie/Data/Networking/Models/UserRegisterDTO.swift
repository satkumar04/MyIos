//
//  UserRegisterDTO.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 09/02/24.
//

import Foundation
struct UserRegisterDTO: Encodable {
    let userName: String
    let name: String
    let password: String
    let email: String
    let birthDate: String
    let gender: GenderDTO
}

