//
//  ElevationSwiftUIView.swift
//  MDSExample
//
//  Created by Hani Abdallah on 5/5/21.
//

import MDS
import Resolver
import SwiftUI

struct ElevationSwiftUIView: View {
    
    var elevationPool = Resolver.resolve() as ElevationPoolProtocol
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 24) {
                addElevation(title: "ElevationNone", elevation: elevationPool.elevationNone)
                addElevation(title: "ElevationSmall", elevation: elevationPool.elevationSmall)
                addElevation(title: "ElevationMedium", elevation: elevationPool.elevationMedium)
                addElevation(title: "ElevationLarge", elevation: elevationPool.elevationLarge)
                addElevation(title: "ElevationXLarge", elevation: elevationPool.elevationXLarge)
            }.padding(.top, 32)
        }.background(Color("background")).edgesIgnoringSafeArea(.bottom).navigationBarTitle("", displayMode: .inline)
    }
    
    func addElevation(title: String, elevation: CGFloat) -> AnyView {
        return AnyView(ZStack(alignment: .leading) {
            Rectangle().fill(Color.white).frame(height: 49).shadow(color: Color("shadow"), radius: elevation/2, x: 0, y: elevation)
            Text(title).foregroundColor(.black).font(.custom("ArialMT", size: 16)).offset(x: 24, y: 0)
        }.padding(.leading,24).padding(.trailing,24)
        )}
}

struct ElevationSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ElevationSwiftUIView()
    }
}
