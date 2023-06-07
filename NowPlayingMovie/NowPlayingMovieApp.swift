//
//  NowPlayingMovieApp.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import SwiftUI

@main
struct NowPlayingMovieApp: App {
    @StateObject var movieFetcher = MovieFetcher()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(movieFetcher)
                .task {
                    try? await movieFetcher.fetchMovie()
                
                }
        }
    }
}
