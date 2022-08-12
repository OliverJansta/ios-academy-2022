//
//  EpisodeRowItemView.swift
//  RickAndMorty
//
//  Created by Oliver Jansta on 12.08.2022.
//  Copyright © 2022 STRV. All rights reserved.
//

import SwiftUI

struct EpisodeRowItemView: View {
    let episode: Episode
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(episode.name)
                    .font(.appItemLargeTitle)
                    .foregroundColor(.appTextItemTitle)
                Text("\(episode.code) - \(episode.airDate.formatted(date: .long, time: .omitted))")
                    .font(.appItemDescription)
                    .foregroundColor(.appTextBody)
                    
            }
            .padding(16)
            Spacer()
        }
        
        .background(.black)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .padding(.horizontal, 8)
    }
}

struct EpisodeRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRowItemView(episode: .mock)
    }
}
