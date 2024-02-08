//
//  ErrorFooterViewModifier.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI


struct ErrorFooterViewModifier: ViewModifier {

    var message: String?
    var isShowed: Bool

    func body(content: Content) -> some View {
        VStack(alignment: .leading) {
            content

            if isShowed, message?.isEmpty == false {
                Text(LocalizedStringKey(message ?? ""))
                    .font(.callout)
                    .foregroundStyle(.red)
                    .animation(.bouncy, value: message)
            }
        }
    }
}

extension View {
    func errorFooter(message: String?, isShowed: Bool) -> some View {
        modifier(ErrorFooterViewModifier(message: message, isShowed: isShowed))
    }
}
