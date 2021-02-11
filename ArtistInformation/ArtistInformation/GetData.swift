//
//  GetData.swift
//  ArtistInformation
//
//  Created by Ronald Joubert on 2/10/21.
//

import SwiftUI
import Combine
import SwiftyJSON

class GetData: ObservableObject {
    @Published var datas = [DataType]()
    
    @Binding var name: String
    
    init() {
        //getData()
        
        let url = URL(string: "https://itunes.apple.com/search?term={\(name)}")!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["results"] {
                let artistName = i.1["artistName"].stringValue
                let trackName = i.1["trackName"].stringValue
                let releaseDate = i.1["releaseDate"].stringValue
                let primaryGenreName = i.1["primaryGenreName"].stringValue
                let trackPrice = i.1["trackPrice"].doubleValue
                let id = i.1["trackId"].intValue
                
                DispatchQueue.main.async {
                    self.datas.append(DataType(id: id, artistName: artistName, trackName: trackName, releaseDate: releaseDate, primaryGenreName: primaryGenreName, trackPrice: trackPrice))
                }
            }
        }.resume()
    }
    
    
}
