//
//  GenderSegmentedPicker.swift
//  mymovie
//
//  Created by satheeesh Kumar P on 08/02/24.
//

import SwiftUI
struct GenderSegmentedPicker: View {

    @Binding var selection: Gender

    var body: some View {
        BaseSegmentedPicker(selection: $selection) {
            ForEach(Gender.allCases) { gender in
                Text(LocalizedStringKey(gender.rawValue)).tag(gender)
            }
        }
        .frame(height: Constants.height)
    }

    private enum Constants {
        static let height: CGFloat = 43
    }
}
