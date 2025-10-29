//
//  ContentView.swift
//  105-final-assignment
//
//  Created by Emiliano on 10/26/25.
//

import SwiftUI

struct ContentView: View {
    @State var albums: [Album] = getAlbums()
    @State var showAddSheet = false
    // CORRECTED LINE 6
    @State var newAlbum: Album = Album(albumName: "", albumAuthor: "", albumArt: "", albumYearOfRelease: 0, notes: "", review: "")
    
    var body: some View {
        
        NavigationStack {
            List($albums, id: \.self.id) { $album in
                NavigationLink(destination: DetailView(album: $album)) {
                    AlbumListView(album: album)
                }
            }
            .navigationTitle("Book Manager")
            .toolbar {
                Button("Add") {
                    // CORRECTED LINE 19
                    newAlbum = Album(albumName: "", albumAuthor: "", albumArt: "", albumYearOfRelease: 0, notes: "", review: "")
                    showAddSheet.toggle()
                }
            }
            .sheet(isPresented: $showAddSheet) {
                AddEditAlbumView(album: $newAlbum, onSave:{
                    albums.append(newAlbum)
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
