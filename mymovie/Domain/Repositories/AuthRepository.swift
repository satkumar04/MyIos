//
//  AuthRepository.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 09/02/24.
//

import Foundation
protocol AuthRepository {
    func logOut() async throws
    func register(user: UserRegister) async throws
   // func logIn(credentials: LoginCredentials) async throws
}
