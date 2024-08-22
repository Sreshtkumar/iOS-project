//
//  Locations.swift
//  Little Lemon App
//
//  Created by Sresht kumar Gampa on 6/18/23.
//

import SwiftUI

struct Locations: View {
    //@EnvironmentObject var model:Model
    var body: some View {
        
        let elements = ["Las Vegas", "Los Angeles", "Los Angeles", "Nevada", "San Francisco", "San Francisco"]
        VStack{
            Image("Little-lemon-logo").padding(10)
            Text("Select a location").padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30)).background(Color.gray.opacity(0.2)).cornerRadius(30)
            NavigationView
            {
                List {
                            ForEach(elements, id: \.self) {element in
                                NavigationLink(destination: Reservations()) {
                Text(element)
                }
                }
                }
                        .scrollContentBackground(.hidden)
                        .padding()
            }
            
           
        }
        
//        VStack {
//                    LittleLemon()
//                    .padding(.top, 50)
//         
//
//                    EmptyView()
//                    .padding([.leading, .trailing], 40)
//                    .padding([.top, .bottom], 8)
//                    .background(Color.gray.opacity(0.2))
//                    .cornerRadius(20)
//         
//
//                    NavigationView {
//                      EmptyView()
//                      .navigationBarTitle("")
//                      .navigationBarHidden(true)
//                    }
//                }
//                .padding()
    }
}

struct Locations_Previews: PreviewProvider {
    static var previews: some View {
        Locations()
    }
}
