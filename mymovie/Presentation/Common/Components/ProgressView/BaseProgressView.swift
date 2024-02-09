//
//  BaseProgressView.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI

struct BaseProgressView: View {

    var body: some View {
        ProgressView()
            .tint(.appAccent)
            .frame(maxWidth: .infinity)
    }
}
