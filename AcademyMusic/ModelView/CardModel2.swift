//
//  CardModel2.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 18/11/23.
//

import Foundation
import SwiftUI

struct CardModel2 {
    
    let imageName:String
    let logo = Image (systemName: "apple.logo")
    let logoName: String = "MikaMusic"
    var logoColor : Color
    var textColor : Color
    var text: String
    let title:String
    let subTitle:String
}

struct CardViewModel2: View, Identifiable {
    var id = UUID()
    let card2 : CardModel2
    var body: some View {
        VStack (alignment: .leading) {
            ZStack{
                Image(card2.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack{
                    HStack(spacing:2){
                        Spacer()
                        Text(card2.logo)
                            .bold()
                            .font(.caption)
                            .foregroundStyle(card2.logoColor)
                        Text(card2.logoName)
                            .bold()
                            .font(.caption)
                            .foregroundStyle(card2.logoColor)
                    }
                    
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 8))
                    Spacer()
                    //      .frame(height:50)
                    HStack{
                        Text(card2.text)
                            .font(.title2)
                            .bold()
                            .padding()
                            .foregroundColor(card2.textColor)
                            .frame(alignment: .bottomLeading)
                        
                        Spacer()
                        
                    }
                    
                }
                .accessibilityHidden(true)
                .frame(width: 170, height: 170)
                
                
            }
            
            
            Text (card2.title)
                .lineLimit(1)
            Text (card2.subTitle)
                .foregroundStyle(.gray)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(Text("\(card2.title) \(card2.subTitle) Playlist"))
        .frame(width:170, height:230)
        
        
        
        
    }
}

struct CardViewModel2_Previews: PreviewProvider{
    static let card2 = CardModel2(imageName: "alien", logoColor: .white, textColor:.white, text: "Feel like an alien", title: "Feel like an alien", subTitle: "Mika Music")
    static var previews: some View{
        CardViewModel2(card2:card2)
    }
}

