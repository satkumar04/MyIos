//
//  BackgroundColorViewModifier.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 05/02/24.
//

import SwiftUI

struct BackgroundColorViewModifier: ViewModifier {

    let color: Color

    func body(content: Content) -> some View {
        ZStack {
            color
                .ignoresSafeArea()

            content
        }
    }
}

extension View {
    func backgroundColor(_ color: Color = .background) -> some View {
        modifier(BackgroundColorViewModifier(color: color))
    }
}
