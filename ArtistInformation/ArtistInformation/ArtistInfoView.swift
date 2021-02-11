//
//  ArtistInfoView.swift
//  ArtistInformation
//
//  Created by Ronald Joubert on 2/10/21.
//

import SwiftUI
import SwiftyJSON

struct ArtistInfoView: View {
    @ObservedObject var list = GetData()
    
    @Binding var name: String
    
    var body: some View {

        List(list.datas) { i in
            TrackInfoView(artistName: i.artistName, trackName: i.trackName, releaseDate: i.releaseDate, primaryGenreName: i.primaryGenreName, trackPrice: i.trackPrice)
        }
    }
}

struct ArtistInfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        ArtistInfoView()
    }
}
