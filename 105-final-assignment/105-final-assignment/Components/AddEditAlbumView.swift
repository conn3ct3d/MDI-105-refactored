//
//  AddEditComponentView.swift
//  105-final-assignment
//
//  Created by mbair on 10/27/25.
//

import SwiftUI

struct AddEditBookView: View {
    
    @Binding var album: Album
    
    var onSave: () -> Void
    
    @Environment(\.dismiss) var dismiss
    
    // A computed property for a clean navigation title (display only)
    private var navTitle: String {
        album.albumName.isEmpty ? "New Album" : "Edit Album"
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            .gray.opacity(0.1),
                            .gray.opacity(0.3)
                        ]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                // Form content
                Form {
                    Section(header: Text("Album Details")) {
                        TextField("Album Name", text: $album.albumName)
                        TextField("Author", text: $album.albumAuthor)
                        TextEditor(text: $album.notes)
                            .frame(height: 100)
//                        Picker("Year of Release", selection: $album.albumYearOfRelease) {
//                            ForEach(Genre.allCases, id: \.self) { genre in
//                                Text(genre.rawValue).tag(genre)
//                            }
//                        }
                    }
                    
                    Section(header: Text("Review")) {
                        TextEditor(text: $album.review)
                            .frame(height: 100)
                        Picker("Listening status", selection: $album.listeningStatus) {
                            ForEach(ListeningStatus.allCases, id: \.self) { status in
                                Text(status.rawValue).tag(status)
                            }
                        }
                        Picker("Rating", selection: $album.rating) {
                            ForEach(1...5, id: \.self) { i in
                                Text("\(i) star\(i == 1 ? "" : "s")").tag(i)
                            }
                        }
                        
                        Picker("Genre", selection: $album.genre){
                            ForEach(Genre.allCases, id:\.self){ genre in
                                Text(genre.rawValue).tag(genre)
                            }
                        }
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle(navTitle)
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        onSave()
                        dismiss()
                    }
                    .disabled(album.albumName.isEmpty)
                }
            }
        }
    }
}



//#Preview {
//    AddEditComponentView()
//}
