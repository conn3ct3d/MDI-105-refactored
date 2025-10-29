//
//  Components.swift
//  105-final-assignment
//
//  Created by Emiliano on 10/27/25.
//

import Foundation
struct Album:Identifiable
{
    let id = UUID()
    var albumName:String
    var albumAuthor:String
    var albumArt:String
    var albumYearOfRelease:Int
    var notes:String
    var review:String
    var rating:Int = 3
    var listeningStatus:ListeningStatus = .listened
    var genre:Genre = .unknown
}
