//
//  ArtistInfoView.swift
//  ArtistInformation
//
//  Created by Ronald Joubert on 2/10/21.
//

import SwiftUI
import SwiftyJSON

struct ArtistInfoView: View {
    //@ObservedObject var list = GetData(name: "https://itunes.apple.com/search?term={\(name)}")
    
    @Binding var name: String
    
    var body: some View {
        let list = GetData(name: "https://itunes.apple.com/search?term={\(name)}")
        List(list.datas) { i in
            TrackInfoView(artistName: i.artistName, trackName: i.trackName, releaseDate: i.releaseDate, primaryGenreName: i.primaryGenreName, trackPrice: i.trackPrice)
        }
    }
}

struct ArtistInfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        ArtistInfoView(name: .constant("Bob"))
    }
}
