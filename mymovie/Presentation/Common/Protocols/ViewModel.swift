//
//  ViewModel.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 03/02/24.
//

import Foundation

@MainActor
protocol ViewModel<State, Event>: ObservableObject where State:Equatable{
  associatedtype State
  associatedtype Event
  var state: State { get }
  func handle(_ event: Event)
}

