//
//  EpisodeListView.swift
//  RickAndMorty
//
//  Created by Oliver Jansta on 12.08.2022.
//  Copyright © 2022 STRV. All rights reserved.
//

import SwiftUI

struct EpisodeListView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView()
            ScrollView() {
                ForEach((1 ... 100), id: \.self) { episode in
                    EpisodeRowItemView(episode: Episode.mock)
                }
            }
        }
        .navigationTitle(R.string.localizable.tabTitleEpisodes())
    }
}

struct EpisodeListView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeListView()
    }
}
