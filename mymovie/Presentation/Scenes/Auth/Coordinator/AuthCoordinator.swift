//
//  AuthCoordinator.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import SwiftUI

final class AuthCoordinator: Coordinator{
    enum Screen: Routable {
        case login
        case personalInfoRegistration
    }
    
    @Published var navigationPath = [Screen]()
    
    private let showMainSceneHandler: () -> Void

    init(showMainSceneHandler: @escaping () -> Void) {
        self.showMainSceneHandler = showMainSceneHandler
    }
    
}

extension AuthCoordinator: AuthCoordinatorProtocol {
    func showPasswordRegistration() {
        
    }
    

    func showMainScene() {
        showMainSceneHandler()
    }

    func showLogin() {
        updatePathForLogin()
        navigationPath.append(.login)
    }

    func showPersonalInfoRegistration() {
        updatePathForPersonalInfoRegistration()
        navigationPath.append(.personalInfoRegistration)
    }

    
}

private extension AuthCoordinator {

    func updatePathForPersonalInfoRegistration() {
        if case .login = navigationPath.last {
            navigationPath.removeLast()
        }
    }

    func updatePathForLogin() {
       
    }
}

