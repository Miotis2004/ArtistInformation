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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ArtistInfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        ArtistInfoView(name: .constant("Bob"))
    }
}
