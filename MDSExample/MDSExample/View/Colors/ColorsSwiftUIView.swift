//
//  ColorsSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//
import MDS
import Resolver
import SwiftUI

struct ColorsSwiftUIView: View {
    var colorPalette = Resolver.resolve() as ColorPaletteProtocol
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            addLabelColor(title: "primary", color: Color(colorPalette.primary))
            addSurfaceColor(title: "onPrimary", textColor: .white, backgroundColor: .blue)
            
            addLabelColor(title: "secondary", color: Color(colorPalette.onPrimary))
            addSurfaceColor(title: "onSecondary", textColor: .white, backgroundColor: .gray)
            
            Spacer()
        }.padding(.leading, 24).padding(.trailing, 24)
    }
    
    func addLabelColor(title: String, color: Color) -> Text {
        Text(title).foregroundColor(color)
    }
    
    func addSurfaceColor(title: String, textColor: Color, backgroundColor: Color) -> AnyView {
        return AnyView(HStack {
            Text(title).foregroundColor(textColor)
            Spacer()
        }.padding(.leading, 16).frame(height: 50).background(backgroundColor))
    }
}

struct ColorsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsSwiftUIView()
    }
}
