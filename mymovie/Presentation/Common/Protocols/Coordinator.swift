//
//  Coordinator.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import Foundation
protocol Coordinator: ObservableObject where Screen: Routable {
    associatedtype Screen
    var navigationPath: [Screen] { get }
}
