//
//  AuthScreenTitle.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI

struct AuthScreenTitle: View {
    let text: LocalizedStringKey
    
    var body: some View {
        Text(text)
            .font(.title2)
            .bold()
    }
}

