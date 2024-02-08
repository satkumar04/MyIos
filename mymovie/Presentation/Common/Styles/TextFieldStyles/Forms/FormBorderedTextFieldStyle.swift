//
//  FormBorderedTextFieldStyle.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI

struct FormBorderedTextFieldStyle: TextFieldStyle {

    let style: FormItemBackgroundViewModifier.Style

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .formTextFieldStyle()
            .formItemBackground(style)
    }
}

extension View {
    func formBorderedTextFieldStyle(
        style: FormItemBackgroundViewModifier.Style = .default
    ) -> some View {
        textFieldStyle(FormBorderedTextFieldStyle(style: style))
    }
}
