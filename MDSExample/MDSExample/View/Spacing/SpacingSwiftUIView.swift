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
            Spacer()
            Text("Spacing is the distance between the objects,  the margin set from one object to the other.").padding(.top,40)
            addSpacing(title: "spacing2XS", subtitle: "2dp default", spacing: spacerPool.spacer2XS)
            addSpacing(title: "spacingXSmall", subtitle: "4dp default", spacing: spacerPool.spacerXSmall)
            addSpacing(title: "spacingSmall", subtitle: "8dp default", spacing: spacerPool.spacerSmall)
            addSpacing(title: "spacingMedium", subtitle: "16dp default", spacing: spacerPool.spacerMedium)
            addSpacing(title: "spacingLarge", subtitle: "24dp default", spacing: spacerPool.spacerLarge)
            addSpacing(title: "spacingXLarge", subtitle: "32dp default", spacing: spacerPool.spacerXLarge)
            Spacer()
        }.padding(.leading, 24).padding(.trailing, 24)
        }.background(Color("background")).ignoresSafeArea(.all)
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
