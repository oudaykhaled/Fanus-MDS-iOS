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
        ScrollView{
        VStack(alignment: .center, spacing: 60) {
            Text("Sizing is the inner distance of the edge  to the content of an object.").multilineTextAlignment(.center).padding(.top,32)
            addSizing(title: "sizer2XS", subtitle: "\(sizerPool.sizer2XS.description) dp default", valuetitle: "\(sizerPool.sizer2XS.description) dp default", padding: sizerPool.sizer2XS)
            addSizing(title: "sizerXSSmall",  subtitle: "\(sizerPool.sizerXSmall.description) dp default", valuetitle: "\(sizerPool.sizerXSmall.description) dp default", padding: sizerPool.sizerXSmall)
            addSizing(title: "sizerSmall",  subtitle: "\(sizerPool.sizerSmall.description) dp default", valuetitle: "\(sizerPool.sizerSmall.description) dp default", padding: sizerPool.sizerSmall)
            addSizing(title: "sizerMedium", subtitle: "\(sizerPool.sizerMedium.description) dp default", valuetitle: "\(sizerPool.sizerMedium.description) dp default", padding: sizerPool.sizerMedium)
            addSizing(title: "sizerLarge",  subtitle: "\(sizerPool.sizerLarge.description) dp default", valuetitle: "\(sizerPool.sizerLarge.description) dp default", padding: sizerPool.sizerLarge)
            addSizing(title: "sizerXLarge",  subtitle: "\(sizerPool.sizerXLarge.description) dp default", valuetitle: "\(sizerPool.sizerXLarge.description) dp default", padding: sizerPool.sizerXLarge)
            Spacer()

        }.padding(.leading, 24).padding(.trailing, 24)
    }.background(Color("background")).edgesIgnoringSafeArea(.bottom).navigationBarTitle("", displayMode: .inline)
    }
    
    func addSizing(title: String, subtitle: String, valuetitle: String, padding: CGFloat) -> AnyView {
        return AnyView(HStack {
      
            VStack {
                Text(title).foregroundColor(.black).font(.system(size: 16, weight: .bold, design: .default)).fixedSize(horizontal: true, vertical: true)
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
