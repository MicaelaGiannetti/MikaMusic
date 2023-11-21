//
//  AcademyMusicApp.swift
//  AcademyMusic
//
//  Created by Micaela Giannetti on 14/11/23.
//

import SwiftUI

@main
struct AcademyMusicApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                AscoltaOra()
                    .tabItem {
                        Label("Listen now", systemImage: "play.circle.fill")
                    }
                
                AscoltaOra()
                    .tabItem {
                        Label("Discover", systemImage: "square.grid.2x2.fill")
                    }
                AscoltaOra()
                    .tabItem {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }
                AscoltaOra()
                    .tabItem {
                        Label("Library", systemImage: "play.square.stack.fill")
                    }
                AscoltaOra()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                        
                    }
                
            }
            .accentColor(.red)}
    }
}


