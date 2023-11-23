//
//  CardModel.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 14/11/23.
//

import Foundation
import SwiftUI

struct CardModel {
    
    let imageName:String
    var showLogo : Bool
    let logo = Image (systemName: "apple.logo")
    let logoName: String = "MikaMusic"
    var logoColor : Color
    var textColor : Color
    var text: String?
    let title:String
    let subTitle:String
}

struct CardViewModel: View, Identifiable {
    var id = UUID()
    let card : CardModel
    var body: some View {
        VStack (alignment: .leading) {
            ZStack{
                Image(card.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack{
                    if card.showLogo{
                        HStack(spacing:2){
                            Spacer()
                            Text(card.logo)
                                .bold()
                                .font(.caption)
                                .foregroundStyle(card.logoColor)
                            Text(card.logoName)
                                .bold()
                                .font(.caption)
                                .foregroundStyle(card.logoColor)
                        }
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 8))
                    }
                    Spacer()
  //                  HStack{
  //                      if let text = card.text {
  //                          Text(text)
  //                              .font(.title2)
  //                              .bold()
  //                              .padding()
  //                              .foregroundColor(card.textColor)
  //                              .frame(alignment: .bottomLeading)
  //                      }
  //                      Spacer()
  //                          .frame(width:50)
  //                  }
                    
                    
                }
                .frame(width: 170, height: 170)
            }
                
                Text (card.title)
                .lineLimit(1)
                Text (card.subTitle)
                    .foregroundStyle(.gray)
            }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(Text("\(card.title)\(card.subTitle)"))
          .frame(width:170, height:230)
            
            
            
            
        }
    }
    struct CardViewModel_Previews: PreviewProvider{
        static let card = CardModel(imageName: "winnie", showLogo: true, logoColor: .black, textColor:.white, text: "Winnie", title: "Winnie The Pooh (1977)", subTitle: "From Disney")
        static var previews: some View{
            CardViewModel(card:card)
        }
    }

