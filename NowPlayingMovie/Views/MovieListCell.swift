//
//  MovieListCell.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import SwiftUI

struct MovieListCell: View {
    let movie: Movie
    
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            AsyncImage(url: movie.posterImageURL) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)

            } placeholder: {
                Color.gray
                    .frame(width: 66.7, height: 100)
            }

            VStack(alignment: .leading) {
                Text(movie.title)
                    .bold()
                Text(movie.releaseDate)
            }

            Spacer()
        }
    }
}

struct MovieListCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieListCell(movie: Movie.dummies[0])
    }
}
