//
//  Routable.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import Foundation
protocol Routable: Hashable, Identifiable {}

extension Routable {
    var id: String {
        String(describing: self)
    }
}
