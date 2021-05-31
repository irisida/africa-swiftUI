//
//  InsetFactView.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - properties
    let animal: Animal
    
    // MARK: - body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } // tabview
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 188)
        } // groupBox
    }
}

// MARK: - preview
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
