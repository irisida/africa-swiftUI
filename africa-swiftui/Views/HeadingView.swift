//
//  HeadingView.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - properties
    
    var headingImage: String
    var headingText: String
    
    
    // MARK: - body
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

// MARK: - preview
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
