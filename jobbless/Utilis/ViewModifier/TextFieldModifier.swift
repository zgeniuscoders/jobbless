//
//  TextFieldModifier.swift
//  jobbless
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI

struct TextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
