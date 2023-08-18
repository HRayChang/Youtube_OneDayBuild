//
//  Constants.swift
//  Youtube_OneDayBuild
//
//  Created by Ray Chang on 2023/8/16.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = "PLMRqhzcHGw1Y5Cluhf7pKRNZtKaA3Q4kg"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
