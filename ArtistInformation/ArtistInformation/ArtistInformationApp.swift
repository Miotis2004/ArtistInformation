//
//  ArtistInformationApp.swift
//  ArtistInformation
//
//  Created by Ronald Joubert on 2/10/21.
//

import SwiftUI

@main
struct ArtistInformationApp: App {
    
    @State private var artistSelected: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            if artistSelected == false {
                ArtistSelectView(artistSelected: $artistSelected)
            } else {
                ContentView()
            }
            
        }
    }
}
