//
//  AscoltaOra.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 14/11/23.
//

import SwiftUI
import UIKit

struct AscoltaOra: View {
    
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical) {
                VStack (alignment:.leading){
                    Text ("Music based on your mood")
                        .font (.title2)
                        .padding (.horizontal)
                        .bold()
                        .accessibilityAddTraits(.isHeader)
                    ScrollView (.horizontal) {
                        
                        
                        HStack {
                            ForEach (emotionCards){card2 in
                                NavigationLink(destination: DetailView()){
                                    card2
                                   
                                }
                                .accessibilityLabel(Text("Playlist"))
                                .accessibilityHint(Text("Tap to get the songlist"))
                                .foregroundColor(Color("LabelColor"))
                                
                            //    if card2.title == "Party hard!"{
                            //        NavigationLink(destination: DetailView()) {
                            //            card2
                            //        }
                            //    } else {
                            //        card2
                            //    }
                            }
                            
                            
                            
                        }
                        .padding (.horizontal)
                    }
                    .scrollIndicators(.hidden)
                    
                    
                }
                .padding(.vertical)
                VStack (alignment:.leading){
                    Text ("Songs to sing when drunk")
                        .font (.title2)
                        .padding (.horizontal)
                        .bold()
                        .accessibilityAddTraits(.isHeader)
                    ScrollView (.horizontal) {
                        
                        
                        HStack{
                            ForEach (filmCards){card in
                                card
                                
                                
                            }
                            
                            
                            
                        }
                        .padding (.horizontal)
                    }
                    
                    .scrollIndicators(.hidden)
                    
                    
                }
                .padding(.vertical)
                VStack (alignment:.leading){
                    Text ("Feel the Rock vibes")
                        .font (.title2)
                        .padding (.horizontal)
                        .bold()
                        .accessibilityAddTraits(.isHeader)
                    ScrollView (.horizontal) {
                        
                        
                        HStack{
                            ForEach (rockCards){card in
                                card
                                
                                
                            }
                            
                            //                 Text(cards.cards.first!.title)
                            
                            
                            
                        }
                        .padding (.horizontal)
                    }
                    
                    .scrollIndicators(.hidden)
                    
                    
                }
                .padding(.vertical)
                
                
                
                
                
            }
            .toolbar {
                ToolbarItemGroup(placement:.topBarTrailing){
                    NavigationLink(destination: Text("Pagina 2")){
                        Image(systemName: "person.crop.circle").font(.title)
                            .foregroundStyle(.red)
                    }
                }
            }
            .navigationTitle("Listen now")
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}


#Preview {
    AscoltaOra()
}
