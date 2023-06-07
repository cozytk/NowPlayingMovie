//
//  MainView.swift
//  NowPlayingMovie
//
//  Created by taekkim on 2023/06/07.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            MovieListView()
                .navigationTitle("현재상영작")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(MovieFetcher())
    }
}
