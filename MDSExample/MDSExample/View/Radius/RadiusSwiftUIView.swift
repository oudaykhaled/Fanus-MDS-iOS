//
//  SizingSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//

import MDS
import Resolver
import SwiftUI

struct RadiusSwiftUIView: View {
    
    var radiusPool = Resolver.resolve() as RadiusPoolProtocol
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 24) {
            addRadius(title: "Radius None", radius: radiusPool.radiusNone)
            addRadius(title: "Radius Small", radius: radiusPool.radiusSmall)
            addRadius(title: "Radius Medium", radius: radiusPool.radiusMedium)
            addRadius(title: "Radius Large", radius: radiusPool.radiusLarge)
            addRadius(title: "Radius Max", radius: radiusPool.radiusMax)
            }.padding(.top, 32)
        }.background(Color("background")).edgesIgnoringSafeArea(.bottom).navigationBarTitle("", displayMode: .inline)
    }
    
    func addRadius(title: String, radius: CGFloat) -> AnyView {
        return AnyView(ZStack(alignment: .leading) {
            Rectangle().fill(Color.white).frame(height: 49).cornerRadius(radius)
            Text(title).foregroundColor(.black).font(.custom("ArialMT", size: 16)).offset(x: 24, y: 0)
    }.padding(.leading,24).padding(.trailing,24)
        )}
}

struct RadiusSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RadiusSwiftUIView()
    }
}
