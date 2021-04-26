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
        ScrollView{
            VStack(alignment: .leading, spacing: 16){
                Group{
                    Text("Semantic Colors").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 20)).frame(maxWidth: .infinity, alignment: .center)
                    
                    Group  {
                        addLabelColor(title: "primary", color: Color(colorPalette.primary))
                        addSurfaceColor(title: "onPrimary", textColor: Color(colorPalette.onPrimary), backgroundColor: Color(colorPalette.primary))
                        
                        addLabelColor(title: "primaryVariant", color: Color(colorPalette.primaryVariant))
                        addSurfaceColor(title: "onPrimaryVariant", textColor: Color(colorPalette.onPrimaryVariant), backgroundColor: Color(colorPalette.primaryVariant))
                        
                        addLabelColor(title: "secondary", color: Color(colorPalette.secondary))
                        addSurfaceColor(title: "onSecondary", textColor: Color(colorPalette.onSecondary), backgroundColor: Color(colorPalette.secondary))
                        
                        addLabelColor(title: "secondaryVariant", color: Color(colorPalette.secondaryVariant))
                        addSurfaceColor(title: "onSecondaryVariant", textColor: Color(colorPalette.onSecondaryVariant), backgroundColor: Color(colorPalette.secondaryVariant))
                        
                        addLabelColor(title: "accent", color: Color(colorPalette.accent))
                        addSurfaceColor(title: "onAccent", textColor: Color(colorPalette.onAccent), backgroundColor: Color(colorPalette.accent))
                        
                    }
                    
                    Group {
                        
                    addLabelColor(title: "success", color: Color(colorPalette.success))
                    addSurfaceColor(title: "onSuccess", textColor: Color(colorPalette.onSuccess), backgroundColor: Color(colorPalette.success))
                        
                    addLabelColor(title: "danger", color: Color(colorPalette.danger))
                    addSurfaceColor(title: "onDanger", textColor: Color(colorPalette.onDanger), backgroundColor: Color(colorPalette.danger)) }
                    
                    addLabelColor(title: "warning", color: Color(colorPalette.warning))
                    addSurfaceColor(title: "onWarning", textColor: Color(colorPalette.onWarning), backgroundColor: Color(colorPalette.warning))
                    
                    addLabelColor(title: "info", color: Color(colorPalette.info))
                    addSurfaceColor(title: "onInfo", textColor: Color(colorPalette.onInfo), backgroundColor: Color(colorPalette.info))
                    
                    addLabelColor(title: "foundation", color: Color(colorPalette.foundation))
                    addSurfaceColor(title: "onFoundation", textColor: Color(colorPalette.onFoundation), backgroundColor: Color(colorPalette.foundation).opacity(0)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                }
                Group {
                    
                    addSurfaceColor(title: "onSurfaceSecondary", textColor: Color(colorPalette.onSurfaceSecondary), backgroundColor: Color(colorPalette.surface).opacity(0))
                    addSurfaceColor(title: "surfaceDisabled", textColor: .black, backgroundColor: Color(colorPalette.surfaceDisabled))
                    addSurfaceColor(title: "shimmer", textColor: .black, backgroundColor: Color(colorPalette.shimmer))
                    addSurfaceColor(title: "selected", textColor: .black, backgroundColor: Color(colorPalette.selected))
                    addSurfaceColor(title: "seperator", textColor: .black, backgroundColor: Color(colorPalette.seperator))
                }
            }.padding(.leading, 24).padding(.trailing, 24).padding(.bottom,50).padding(.top, 32)
        }.background(Color("background")).padding(.top,88).ignoresSafeArea(.all)
    }
    
    func addLabelColor(title: String, color: Color) -> Text {
        Text(title).foregroundColor(color).font(.system(size: 16, weight: .bold, design: .default))
    }
    
    func addSurfaceColor(title: String, textColor: Color, backgroundColor: Color) -> AnyView {
        return AnyView(HStack {
            Text(title).foregroundColor(textColor).font(.system(size: 16, weight: .bold, design: .default))
            Spacer()
        }.padding(.leading, 16).frame(height: 50).background(backgroundColor))
    }
}

struct ColorsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsSwiftUIView()
    }
}
