//
//  MovieDetailView.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie

    var body: some View {
        VStack {
            AsyncImage(url: movie.backdropImageURL) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 390)
                    .clipped()

            } placeholder: {
                Color.gray
                    .frame(width: 390, height: 390)
            }


            HStack(spacing: 8) {
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .bold()
                    Text(movie.releaseDate)
                }
                Spacer()
                Text(String(format: "%.1f", movie.voteAverage))
            }
            .padding()

            ScrollView {
                Text(movie.overview)
            }

            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.dummies[0])
    }
}
