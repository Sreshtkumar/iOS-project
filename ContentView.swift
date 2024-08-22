//
//  ContentView.swift
//  Little Lemon App
//
//  Created by Sresht kumar Gampa on 6/18/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        TabView{
            Locations().tabItem({
                Label("Locations", systemImage: "fork.knife")
            })
            Reservations().font(.title).tabItem({
                Label("Reservation", systemImage: "menucard")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
