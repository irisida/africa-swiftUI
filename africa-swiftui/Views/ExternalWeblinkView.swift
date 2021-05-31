//
//  ExternalWeblinkView.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - properties
    let animal: Animal
    
    
    // MARK: - body
    var body: some View {
        GroupBox {
            
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name.capitalized,
                         destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } // HStacks
        } // groupBox
    }
}

// MARK: - preview
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[6])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
