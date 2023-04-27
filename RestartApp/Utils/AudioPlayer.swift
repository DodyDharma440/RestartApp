//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Dodi Aditya on 27/04/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(name: String, type: String) {
    if let path = Bundle.main.path(forResource: name, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Couldn't play this audio")
        }
    } 
}

