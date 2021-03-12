//
//  ContentView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    NavigationLink(destination: ColorsSwiftUIView()) {
                        Text("Colors")
                    }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50).background(Color.gray)
                    NavigationLink(destination: SpacingSwiftUIView()) {
                        Text("Spacing")
                    }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50).background(Color.gray)
                    NavigationLink(destination: SizingSwiftUIView()) {
                        Text("Sizing")
                    }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50).background(Color.gray)
                }
            }.padding(.leading, 24).padding(.trailing, 24)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
