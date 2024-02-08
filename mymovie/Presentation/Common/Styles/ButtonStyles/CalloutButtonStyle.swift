//
//  CalloutButtonStyle.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI

struct CalloutButtonStyle: ButtonStyle {
    let calloutText: LocalizedStringKey

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: Constants.spacing) {
            Text(calloutText)
                .foregroundStyle(.appLightGray)

            configuration.label
                .foregroundStyle(.appAccent)
                .fontWeight(.medium)
        }
        .font(.callout)
        .padding(.bottom)
    }

    private enum Constants {
        static let spacing: CGFloat = 6
    }
}



