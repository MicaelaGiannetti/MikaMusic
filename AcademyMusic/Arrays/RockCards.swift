//
//  RockCards.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 16/11/23.
//

import Foundation
import SwiftUI

var rockCards : [CardViewModel] = [
    
    
    CardViewModel(card:CardModel(imageName: "soad", showLogo: false, logoColor: .green, textColor: .gray, text: "SOAD", title: "Steal this Album! (2002)", subTitle: "System of a Down")),
    CardViewModel(card:CardModel(imageName: "placebo", showLogo: false, logoColor: .white,  textColor: .white,text: "Placebo", title: "Black Market Music (2000)", subTitle: "Placebo")),
    CardViewModel(card:CardModel(imageName: "joanjett", showLogo: false, logoColor: .black, textColor: .white, title: "The Hit List (1990)", subTitle: "Joan Jett & The Blackhearts")),
    CardViewModel(card:CardModel(imageName: "clash", showLogo: false, logoColor: .black, textColor: .white, title: "Combat Rock (1982)", subTitle: "The Clash"))
]
