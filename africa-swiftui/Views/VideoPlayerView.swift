//
//  VideoPlayerView.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - properties
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(filename: videoSelected, fileFormat: "mp4")) {
                //Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } // VStack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

// MARK: - preview
struct VideoPlayerView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
        }
    }
}
