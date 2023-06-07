//
//  MovieFetcher.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import Foundation

@MainActor
class MovieFetcher: ObservableObject {
    @Published var movies: [Movie] = Movie.dummies

    func fetchMovie() async throws {
        let headers = [
          "accept": "application/json",
          "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNDhhYjc3ZDYzYWJhZTdmNDNlYjE2ZWEwMzZhM2Q1YiIsInN1YiI6IjY0N2VmMDc3OTM4MjhlMDBkY2RlNWI4YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.tL018qfQXdEJGoQ_JMRgGnu8SugSCWn6bmdgeZ6RAqw"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/movie/now_playing?language=ko&page=1")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let (data, _) = try await session.data(for: request as URLRequest)
        let movieModel = try JSONDecoder().decode(MovieModel.self, from: data)
        movies = movieModel.results
    }
}
