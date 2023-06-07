//
//  MovieListView.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import SwiftUI

struct MovieListView: View {
    @EnvironmentObject var movieFetcher: MovieFetcher
    var body: some View {
        List(movieFetcher.movies) { movie in
            NavigationLink {
                MovieDetailView(movie: movie)
            } label: {
                MovieListCell(movie: movie)
            }
        }
        .listStyle(.plain)
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
            .environmentObject(MovieFetcher())
    }
}
