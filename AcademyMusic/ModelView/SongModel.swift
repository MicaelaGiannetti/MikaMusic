//
//  SongList.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 18/11/23.
//

import Foundation
import SwiftUI

struct songModel {
    var songImage : String
    var songTitle : String
    var songSubTitle : String
    var icon = Image(systemName: "ellipsis" )
}

struct songViewModel: View, Identifiable{
    
    var id = UUID()
    let song : songModel
    var body: some View{
        HStack{
            Image (song.songImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(.trailing)
            VStack (alignment: .leading,spacing: 0){
                Text(song.songTitle)
                    .font(.body)
                    .padding(.bottom,1)
                Text(song.songSubTitle)
                    .font(.callout)
                    .foregroundStyle(.gray)
                    //.font()
            }
            Spacer()
            Text (song.icon)
                .bold()
        }
        .padding(.horizontal)
        .frame(height:50)
        
        
    }
    
    
}

struct songViewModel_Previews: PreviewProvider{
    static let song = songModel(songImage: "placebo", songTitle: "Special K", songSubTitle: "Placebo")
    static var previews: some View{
        songViewModel(song:song)
    }
}

