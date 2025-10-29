//
//  API.swift
//  105-final-assignment
//
//  Created by mbair on 10/27/25.
//

func getAlbums() -> [Album]
{
    return [
            Album(
                albumName: "Abbey Road",
                albumAuthor: "The Beatles",
                albumArt: "note",
                albumYearOfRelease: 1969,
                notes: "Iconic cover art. Side B medley is incredible.",
                review: "A masterpiece of songwriting and production. Every track is a classic.",
                rating: 5,
                listeningStatus: .listened,
                genre: .rock
            ),
            
            Album(
                albumName: "Thriller",
                albumAuthor: "Michael Jackson",
                albumArt: "note",
                albumYearOfRelease: 1982,
                notes: "Changed the game for music videos.",
                review: "Non-stop hits from start to finish. The production value is timeless.",
                rating: 5,
                listeningStatus: .listened,
                genre: .pop
            ),
            
            Album(
                albumName: "The Dark Side of the Moon",
                albumAuthor: "Pink Floyd",
                albumArt: "note",
                albumYearOfRelease: 1973,
                notes: "Best listened to with headphones in one sitting.",
                review: "A concept album that explores heavy themes with groundbreaking sound engineering.",
                rating: 5,
                listeningStatus: .listened,
                genre: .rock
            ),
            Album(
                            albumName: "Son of Earth and Sky",
                            albumAuthor: "High Priest of Saturn",
                            albumArt: "note",
                            albumYearOfRelease: 2016,
                            notes: "Norwegian psychedelic stoner/doom metal.",
                            review: "Heavy, fuzzed-out, and atmospheric.",
                            rating: 5,
                            listeningStatus: .toListen,
                            genre: .rock
                        ),
                        
                        Album(
                            albumName: "Welcome to Sky Valley",
                            albumAuthor: "Kyuss",
                            albumArt: "note",
                            albumYearOfRelease: 1994,
                            notes: "A seminal album in the desert and stoner rock scene.",
                            review: "Essential listening. Defined a generation of fuzzed-out guitar tones.",
                            rating: 5,
                            listeningStatus: .listened,
                            genre: .rock
                        ),
                        
                        Album(
                            albumName: "Dopethrone",
                            albumAuthor: "Electric Wizard",
                            albumArt: "note",
                            albumYearOfRelease: 2000,
                            notes: "Often cited as one of the heaviest stoner/doom albums.",
                            review: "Crushing, bleak, and monumentally heavy.",
                            rating: 5,
                            listeningStatus: .toListen,
                            genre: .rock
                        )
        ]
}
