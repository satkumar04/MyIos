//
//  NetworkConfig.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 09/02/24.
//

import Foundation

protocol NetworkConfig {
    var path: String { get }
    var endPoint: String { get }

    var task: HTTPTask { get }
    var method: HTTPMethod { get }
}
