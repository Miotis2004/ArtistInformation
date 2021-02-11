//
//  ArtistSelectView.swift
//  ArtistInformation
//
//  Created by Ronald Joubert on 2/10/21.
//

import SwiftUI

struct ArtistSelectView: View {
    
    @State private var name: String = ""
    
    @Binding var artistSelected: Bool
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                TextField("Enter artist name)", text: $name)
                Button(action: {
                    ArtistInfoView(name: $name)
                }, label: {
                    Image(systemName: "magnifyingglass").font(.system(size: 32, weight: .regular))
                })
                
            }
            
            Spacer()
        }
        .font(.largeTitle)
    }
}

struct ArtistSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistSelectView(artistSelected: .constant(false))
    }
}
