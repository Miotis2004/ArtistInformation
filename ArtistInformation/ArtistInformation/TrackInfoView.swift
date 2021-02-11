//
//  TrackInfoView.swift
//  ArtistInformation
//
//  Created by Ronald Joubert on 2/10/21.
//

import SwiftUI

struct TrackInfoView: View {
    
    var artistName: String
    var trackName: String
    var releaseDate: String
    var primaryGenreName: String
    var trackPrice: Double
    
    var body: some View {
        VStack (spacing: 20) {
            Text(artistName)
                .font(.title)
            Text(trackName)
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Spacer()
                Text(releaseDate)
                    .font(.subheadline)
                Spacer()
                Text(primaryGenreName)
                    .font(.subheadline)
                Spacer()
            }
            Text("\(trackPrice)")
                .font(.title2)
        }
    }
}

struct TrackInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TrackInfoView(artistName: "Ronnie", trackName: "Get Ya Some", releaseDate: "Now", primaryGenreName: "Rock", trackPrice: 1.29)
    }
}
