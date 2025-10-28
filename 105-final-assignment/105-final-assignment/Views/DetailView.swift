//
//  DetailView.swift
//  105-final-assignment
//
//  Created by mbair on 10/27/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var album: Album
    @State private var showEditSheet: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                                HStack(spacing: 15) {
                    Image(album.albumArt)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .cornerRadius(10)
                        .shadow(radius: 4)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(album.albumName)
                            .font(.system(size: 28, weight: .bold, design: .serif))
                            .lineLimit(3)
                        
                        Text("by \(album.albumAuthor)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.vertical, 10)
                
                CustomCapsule(album.listeningStatus.rawValue)

                Text("Description")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(album.notes.isEmpty ? "No notes provided." : album.notes)
                    .font(.body)
                
                HStack {
                    CustomCapsule(album.genre.rawValue, color: .secondary.opacity(0.3))
                    CustomCapsule(album.listeningStatus.rawValue)
                }
                
                if (album.review != "" || album.rating != 0) {
                    Divider().padding(.vertical, 8)
                    
                    Text("Review")
                        .font(.title3.weight(.semibold))
                    
                    if(album.rating > 0) {
                        Text("Rating: \(album.rating) \(album.rating > 1 ? "stars" : "star")")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.orange)
                    }
                    
                    Text(album.review != "" ? album.review : "Not reviewed yet")
                        .font(.body)
                        .foregroundColor(album.review.isEmpty ? .secondary : .primary)
                }
            }
            .padding()
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button("Edit") {
                showEditSheet.toggle()
            }
        }
        .sheet(isPresented: $showEditSheet) {
            AddEditAlbumView(album: $album, onSave:{
                
            })
        }
    }
}
