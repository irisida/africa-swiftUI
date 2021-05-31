//
//  InsetGalleryView.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - properties
    let animal: Animal
    
    // MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 16) {
                ForEach(animal.gallery, id: \.self) { pic in
                    Image(pic)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

// MARK: - preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        
        Group {
            InsetGalleryView(animal: animals[4])
        }
    }
}
