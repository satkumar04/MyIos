//
//  WelcomeViewState.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 03/02/24.
//

// States are maintained here
enum WelcomeViewState: Equatable {
    case idle
}

enum WelcomeViewEvent {
    case logInTapped
    case registrationTapped
}
