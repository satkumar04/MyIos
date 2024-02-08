//
//  TintColor.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI

struct TintColor: ViewModifier {

    let color: Color

    func body(content: Content) -> some View {
        if #available(iOS 16.1, *) {
            content
                .tint(color)
        } else {
            content
                .accentColor(color)
        }
    }
}

extension View {
    func tintColor(_ color: Color) -> some View {
        modifier(TintColor(color: color))
    }
}
