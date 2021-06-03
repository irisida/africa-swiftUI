//
//  CreditsView.swift
//  africa-swiftui
//
//  Created by ed on 03/06/2021.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("""
    Copyright © irisida
    All rights reserved.
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        } // VStack
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
