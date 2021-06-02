//
//  VideoPlayerHelper.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?


// autoplay helper function
func playVideo(filename: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    
    return videoPlayer!
}
