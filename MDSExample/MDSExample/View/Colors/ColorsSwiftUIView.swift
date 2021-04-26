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
         
        VStack(alignment: .leading, spacing: 8){
         
            Spacer()
            Text("Semantic Colors").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 20))
            
                Group  {
                addLabelColor(title: "primary", color: Color(colorPalette.primary))
                addSurfaceColor(title: "onPrimary", textColor: Color(colorPalette.onPrimary), backgroundColor: Color(colorPalette.primary))
                
                addLabelColor(title: "secondary", color: Color(colorPalette.secondary))
                addSurfaceColor(title: "onSecondary", textColor: Color(colorPalette.onSecondary), backgroundColor: Color(colorPalette.secondary))
                
                addLabelColor(title: "accent", color: Color(colorPalette.accent))
                addSurfaceColor(title: "onAccent", textColor: Color(colorPalette.onAccent), backgroundColor: Color(colorPalette.accent))
                
                addLabelColor(title: "success", color: Color(colorPalette.success))
                addSurfaceColor(title: "onSuccess", textColor: Color(colorPalette.onSuccess), backgroundColor: Color(colorPalette.success))
               
                addLabelColor(title: "danger", color: Color(colorPalette.danger))
                addSurfaceColor(title: "onDanger", textColor: Color(colorPalette.onDanger), backgroundColor: Color(colorPalette.danger)) }
            
            Group {
                addLabelColor(title: "warning", color: Color(colorPalette.warning))
                addSurfaceColor(title: "onWarning", textColor: Color(colorPalette.onWarning), backgroundColor: Color(colorPalette.warning))
                
                addLabelColor(title: "info", color: Color(colorPalette.info))
                addSurfaceColor(title: "onInfo", textColor: Color(colorPalette.onInfo), backgroundColor: Color(colorPalette.info))
                
                addLabelColor(title: "foundation", color: Color(colorPalette.foundation))
                addSurfaceColor(title: "onFoundation", textColor: Color(colorPalette.onFoundation), backgroundColor: Color(colorPalette.foundation).opacity(0)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
                addLabelColor(title: "surface", color: Color(colorPalette.surface))
                addSurfaceColor(title: "onSurface", textColor: Color(colorPalette.onSurface), backgroundColor: Color(colorPalette.surface))
               
                addSurfaceColor(title: "onSurfaceSecondary", textColor: Color(colorPalette.onSurfaceSecondary), backgroundColor: Color(colorPalette.surface).opacity(0))
                addSurfaceColor(title: "surfaceDisabled", textColor: .black, backgroundColor: Color(colorPalette.surfaceDisabled))
            
            }
            
            Group {
                addSurfaceColor(title: "shimmer", textColor: .black, backgroundColor: Color(colorPalette.shimmer))
                addSurfaceColor(title: "selected", textColor: .black, backgroundColor: Color(colorPalette.selected))
                addSurfaceColor(title: "seperator", textColor: .black, backgroundColor: Color(colorPalette.seperator))
            
            }}.padding(.leading, 24).padding(.trailing, 24)
            
            VStack{
                Group{
                    Text("Neutral Colors").multilineTextAlignment(.center).padding(.top , 35).padding(.bottom, 16).font(.system(size: 16, weight: .bold, design: .default))
                    addNeutralColor(title: "neutral_00", textColor: .black, backgroundColor: Color(colorPalette.neutral_00))
                    addNeutralColor(title: "neutral_10", textColor: .black, backgroundColor: Color(colorPalette.neutral_10))
                    addNeutralColor(title: "neutral_20", textColor: .black, backgroundColor: Color(colorPalette.neutral_20))
                    addNeutralColor(title: "neutral_30", textColor: .black, backgroundColor: Color(colorPalette.neutral_30))
                    addNeutralColor(title: "neutral_40", textColor: .black, backgroundColor: Color(colorPalette.neutral_40))
                    addNeutralColor(title: "neutral_50", textColor: .black, backgroundColor: Color(colorPalette.neutral_50))
                    addNeutralColor(title: "neutral_60", textColor: .black, backgroundColor: Color(colorPalette.neutral_60))}
                Group{
                    addNeutralColor(title: "neutral_70", textColor: .white, backgroundColor: Color(colorPalette.neutral_70))
                    addNeutralColor(title: "neutral_80", textColor: .white, backgroundColor: Color(colorPalette.neutral_80))
                    addNeutralColor(title: "neutral_90", textColor: .white, backgroundColor: Color(colorPalette.neutral_90))
                    addNeutralColor(title: "neutral_100", textColor: .white, backgroundColor: Color(colorPalette.neutral_100))
                }
                
                
        }.padding(.leading, 24).padding(.trailing, 24)
            
            HStack{
                VStack(alignment: .leading, spacing: 8){
                    addLabelColor(title: "defaultText", color: Color(colorPalette.defaultText)).padding(.top , 10)
                    addLabelColor(title: "supportText", color: Color(colorPalette.supportText))
                    addLabelColor(title: "disabledText", color: Color(colorPalette.disabledText))
                    addLabelColor(title: "defaultTextInverse", color: Color(colorPalette.defaultTextInverse))
                    addLabelColor(title: "supportTextInverse", color: Color(colorPalette.supportTextInverse))
                Spacer()
            }
               Spacer()
            }.padding(.leading, 24).padding(.trailing, 24)
      
        }.background(Color("background")).edgesIgnoringSafeArea(.bottom)
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
    
    func addNeutralColor(title: String, textColor: Color, backgroundColor: Color) -> AnyView {
        return AnyView(HStack {
            Spacer()
            Text(title).foregroundColor(textColor).font(.system(size: 16, weight: .bold, design: .default))
            Spacer()
        }.frame(height: 50).background(backgroundColor))
    }
}

struct ColorsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsSwiftUIView()
    }
}
