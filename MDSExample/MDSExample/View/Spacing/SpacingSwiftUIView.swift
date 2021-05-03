//
//  SizingSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//

import MDS
import Resolver
import SwiftUI

struct SpacingSwiftUIView: View {
    
    var spacerPool = Resolver.resolve() as SpacerPoolProtocol
    
    var body: some View {
        ScrollView{
        VStack(alignment: .center, spacing: 40) {
            Text("Spacing is the distance between the objects,  the margin set from one object to the other.").padding(.top,32)
            addSpacing(title: "spacing2XS", subtitle: "\(spacerPool.spacer2XS.description) dp default", spacing: spacerPool.spacer2XS)
            addSpacing(title: "spacingXSmall", subtitle: "\(spacerPool.spacerXSmall.description) dp default", spacing: spacerPool.spacer2XS)
            addSpacing(title: "spacingSmall", subtitle: "\(spacerPool.spacerSmall.description) dp default", spacing: spacerPool.spacer2XS)
            addSpacing(title: "spacingMedium", subtitle: "\(spacerPool.spacerMedium.description) dp default", spacing: spacerPool.spacer2XS)
            addSpacing(title: "spacingLarge", subtitle: "\(spacerPool.spacerLarge.description) dp default", spacing: spacerPool.spacer2XS)
            addSpacing(title: "spacingXLarge", subtitle: "\(spacerPool.spacerXLarge.description) dp default", spacing: spacerPool.spacer2XS)
            Spacer()
        }.padding(.leading, 24).padding(.trailing, 24)
        }.background(Color("background")).edgesIgnoringSafeArea(.bottom).navigationBarTitle("", displayMode: .inline)
    }
    
    
    func addSpacing(title: String, subtitle: String, spacing: CGFloat) -> AnyView {
        return AnyView(HStack() {
            VStack {
                Text(title).foregroundColor(.black).font(.system(size: 16, weight: .bold, design: .default))
                Text(subtitle).foregroundColor(.black).font(.custom("default", size: 14))
            }
            Spacer()
            VStack(spacing: spacing) {
                Rectangle().fill(Color.white).frame(width: 200, height: 25)
                Rectangle().fill(Color.white).frame(width: 200, height: 25)
                Rectangle().fill(Color.white).frame(width: 200, height: 25)
            }
        })
    }
}

struct SpacingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SpacingSwiftUIView()
    }
}
