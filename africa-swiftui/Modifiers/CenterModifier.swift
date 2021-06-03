//
//  CenterModifier.swift
//  africa-swiftui
//
//  Created by ed on 03/06/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            
            content
            
            Spacer()
        }
    }
}
