//
//  AuthCoordinatorProtocol.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 03/02/24.
//

import Foundation
@MainActor
protocol AuthCoordinatorProtocol {
    func showLogin()
    func showMainScene()
    func showPersonalInfoRegistration()
    func showPasswordRegistration()
}

