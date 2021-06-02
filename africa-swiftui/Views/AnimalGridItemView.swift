//
//  AnimalGridItemView.swift
//  africa-swiftui
//
//  Created by ed on 02/06/2021.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - properties
    let animal: Animal
    
    // MARK: - body
    var body: some View {
        
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - preview
struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[7])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
