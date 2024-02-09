//
//  HTTPTask.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 09/02/24.
//

import Foundation
typealias Parameters = [String: Any]

enum HTTPTask {
    case request
    case requestBody(Data)
    case requestUrlParameters(Parameters)
}
