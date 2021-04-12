//
//  SpacingSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//
import Resolver
import MDS
import SwiftUI

struct SizingSwiftUIView: View {
    
    var sizerPool = Resolver.resolve() as SizerPoolProtocol

    var body: some View {
        
        VStack(alignment: .center, spacing: 60) {
            Spacer()
            Text("Sizing is the inner distance of the edge  to the content of an object.").multilineTextAlignment(.center).padding(.bottom,-20)
            addSizing(title: "sizer2XS", subtitle: "2dp default", valuetitle: "2dp default", padding: sizerPool.sizer2XS)
            addSizing(title: "sizerXSSmall", subtitle: "4dp default", valuetitle: "4dp default", padding: sizerPool.sizerXSmall)
            addSizing(title: "sizerSmall", subtitle: "8dp default", valuetitle: "8dp default", padding: sizerPool.sizerSmall)
            addSizing(title: "sizerMedium", subtitle: "16dp default", valuetitle: "16dp default", padding: sizerPool.sizerMedium)
            addSizing(title: "sizerLarge", subtitle: "24dp default", valuetitle: "24dp default", padding: sizerPool.sizerLarge)
            addSizing(title: "sizerXLarge", subtitle: "32dp default", valuetitle: "32dp default", padding: sizerPool.sizerXLarge)
            Spacer()

        }.padding(.leading, 24).padding(.trailing, 24).background(Color("background")).ignoresSafeArea(.all)
    }
    
    func addSizing(title: String, subtitle: String, valuetitle: String, padding: CGFloat) -> AnyView {
        return AnyView(HStack {
      
            VStack {
                Text(title).foregroundColor(.black).font(.system(size: 16, weight: .bold, design: .default))
                Text(subtitle).foregroundColor(.black).font(.custom("default", size: 14))
            }
            Spacer()
            VStack {
                VStack {
                    Text(valuetitle).foregroundColor(.black)
                }.frame(minWidth: 0, maxWidth: .infinity).background(Color("background"))
            }.frame(width: (200-padding)).padding(padding).background(Color.white)
        })
    }
}

struct SizingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SizingSwiftUIView()
    }
}
