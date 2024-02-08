//
//  PersonalInfoViewModel.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 07/02/24.
//

import Foundation
struct PersonalInfoViewModel: Equatable, Hashable {
    let userName: String
    let name: String
    let email: String
    let birthDate: Date
    let gender: Gender
}

