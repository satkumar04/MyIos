//
//  Gender.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 07/02/24.
//

import Foundation
enum Gender: String, CaseIterable, Identifiable {
    case male
    case female

    var id: String {
        rawValue
    }
}
