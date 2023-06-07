//
//  Movie.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import Foundation

// MARK: - Movie
struct MovieModel: Codable {
    let results: [Movie]
}

// MARK: - Result
struct Movie: Codable, Identifiable {
    let backdropPath: String
    let id: Int
    let overview: String
    let posterPath, releaseDate, title: String
    let voteAverage: Double

    var backdropImageURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/original" + backdropPath)!
    }

    var posterImageURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/original" + posterPath)!
    }

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case id
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case voteAverage = "vote_average"

    }

    static let dummies: [Movie] = [
            Movie(backdropPath: "/2klQ1z1fcHGgQPevbEQdkCnzyuS.jpg",
                 id: 502356,
                 overview: "따단-이 강도들은 직장인 김형수가 끝까지 맞서 싸웠다! 따단이라는 강도단이 국내에서 가장 인기 있는 병원에 들이닥쳤다. 하지만 그들은 정말 강도일까? 이들은 김형수에게 무슨 일을 시켜야만 했을까?",
                 posterPath: "/si3UJdGoq05NUUNTC2aWpEtPney.jpg",
                 releaseDate: "2021-09-30",
                 title: "강도들 (Thieves)",
                 voteAverage: 8.4),
            Movie(backdropPath: "/34OGjFEbHj0E3lE2w0iTUVq0CBz.jpg",
                  id: 335983,
                  overview: "혼자 떠오르는 소녀, 러시안 룰렛 클라라. 전 직장 동료들이 그녀를 찿아 한국으로 찾아온다. 그들은 마술예술단, 마술을 무대에서 연주하는 혁명적인 행위예술단이었다. 세상을 hoop으로 감싸겠다는 그들의 마음에 흔들린 클라라. 하지만 그들의 목표는 다르다. 불사조를 손에 넣기 위한 진짜 목표를 위해 러시안 룰렛 규칙으로 약속한 '한 사람'을 선택한다. 결국, 클라라는 그들의 살인게임의 희생양이 된다.",
                  posterPath: "/kHHo2MORtbI9PZi4mI76SC1SGgW.jpg",
                  releaseDate: "2016-05-25",
                  title: "클로저카움 (The Closest Encounter)",
                  voteAverage: 7.7),

            Movie(backdropPath: "/vs7IIVjoOeE7dxf7dEhj01NU7z5.jpg",
                  id: 552,
                  overview: "이 게임은 당신의 정신을 평가합니다. 김주영은 섬에 갇혔으며, 언제 죽을지 모른다. 단 한 번이라도 거짓말을 하게 된다면, 그녀는 죽을 것이다.",
                  posterPath: "/5GoKCsVZ06A1O4OqBFFFgsYfyfP.jpg",
                  releaseDate: "2013-06-06",
                  title: "수상한 그녀 (The Suspect)",
                  voteAverage: 7.3)
        ]
}
