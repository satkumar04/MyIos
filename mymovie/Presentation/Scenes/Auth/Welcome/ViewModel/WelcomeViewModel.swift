//
//  WelcomeViewModel.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 03/02/24.
//

import Foundation

final class WelcomeViewModel: ViewModel{
    
    @Published private(set) var state: WelcomeViewState
    private let coordinator: AuthCoordinatorProtocol
    
    init(coordinator:AuthCoordinatorProtocol){
        state = .idle
        self.coordinator = coordinator
    }
    func handle(_ event: WelcomeViewEvent) {
           switch event {
           case .logInTapped:
               coordinator.showLogin()

           case .registrationTapped:
               coordinator.showPersonalInfoRegistration()
           }
       }
    
}
