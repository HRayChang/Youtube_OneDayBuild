//
//  Video.swift
//  Youtube_OneDayBuild
//
//  Created by Ray Chang on 2023/8/16.
//

import Foundation

struct Video: Decodable {
    
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    
    enum Codingkeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: Codingkeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: Codingkeys.self, forKey: .snippet)
        
        // Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        // Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: Codingkeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: Codingkeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse Video ID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: Codingkeys.self, forKey: .resourceId)
        
        self.videoID = try resourceIdContainer.decode(String.self, forKey: .videoId)
    }
}
