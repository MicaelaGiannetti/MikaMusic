//
//  DetailView.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 18/11/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        
        List {
                
             header: do {
                ZStack {
                    Image("party")
                        .resizable()
                        .scaledToFill()
                        .frame(width:400, height: 400)
                        .clipped()
                        .ignoresSafeArea()
                        .accessibilityHidden(true)
                    VStack {

                        Spacer()
                        Text("Party hard!")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.white)
                        Text("Mika Music")
                            .font(.title3)
                            .foregroundStyle(.white)
                        HStack(spacing: 100) {
                            Button(action: {
                                print("Button tapped")
                            }) {
                                Label("Play", systemImage: "play.fill")
                                    .buttonStyle(.bordered)
                                    .labelStyle(.titleAndIcon)
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(.white)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.gray)
                                            .opacity(0.3)
                                            .frame(width:150,height:40)
                                    )
                            }
                            Button(action: {
                                print("Button tapped")
                            }) {
                                Label("Shuffle", systemImage: "shuffle")
                                    .buttonStyle(.bordered)
                                    .labelStyle(.titleAndIcon)
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(.white)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.gray)
                                            .opacity(0.3)
                                            .frame(width:150,height:40)
                                    )
                            }
                        }
                        .padding()
                    }
                    .padding(.bottom)
                }
                .ignoresSafeArea()
            }
            ForEach(songList) { song in
                                song
                            }
            }
            .listStyle(.plain)
            .ignoresSafeArea()
            .navigationBarTitle("")
            .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                NavigationLink(destination: Text("Pagina 2")) {
                    Image(systemName: "plus.circle.fill").font(.title2)
                        .foregroundStyle(.white)
                }
                NavigationLink(destination: Text("Pagina 2")) {
                    Image(systemName: "ellipsis.circle.fill").font(.title2)
                        .foregroundStyle(.white)
                }
            }
        }
    }
     
}




#Preview {
    DetailView()
}
