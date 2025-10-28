//
//  AlbumListView.swift
//  105-final-assignment
//
//  Created by mbair on 10/27/25.
//

import SwiftUI

struct AlbumListView: View {
    
    let album:Album
    
    var body: some View {
        HStack(spacing:15){
            Image(album.albumArt)
                .resizable()
                .scaledToFill()
                .frame(width:50,height:70)
                .cornerRadius(8)
            
            VStack(alignment:.leading, spacing:4){
                Text(album.albumName)
                    .font(.headline)
                    .lineLimit(1)
                
                Text(album.albumAuthor)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
        }
        .padding(.vertical,4)
    }
}

//#Preview {
//    AlbumListView()
//}
