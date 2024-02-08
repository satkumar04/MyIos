//
//  FormErrorableItemViewModifier.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI

struct FormErrorableItemViewModifier: ViewModifier {

    var message: String?
    var isErrorShowed: Bool

    func body(content: Content) -> some View {
        content
            .formTextFieldStyle()
            .formItemBackground(isErrorShowed ? .error : .default)
            .errorFooter(message: message, isShowed: isErrorShowed)
    }
}

extension View {
    func formErrorableItem(
        message: String?,
        isErrorShowed: Bool
    ) -> some View {
        modifier(FormErrorableItemViewModifier(
            message: message,
            isErrorShowed: isErrorShowed
        ))
    }
}

