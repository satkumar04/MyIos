//
//  AppCoordinator.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import Foundation
@MainActor
final class AppCoordinator: ObservableObject {
    
    enum State {
        case idle
        case loading
        case auth
        case main
    }

    enum Action {
        case showAuth
        case showMain
        case checkAuthorization
    }
    
    
    init() {
        state = .idle
    }
    @Published private(set) var state: State

    
    func handle(_ action: Action) {
        switch action {
        case .checkAuthorization:
            Task { await loadData() }
        case .showAuth:
            state = .auth
       case .showMain:
           state = .main
        }
    }
}


private extension AppCoordinator {

    func loadData() async {
        state = .loading

//        do {
//            try await fetchProfileUseCase.execute()
//            state = .main
//        } catch {
//            state = .auth
//        }
    }
}
