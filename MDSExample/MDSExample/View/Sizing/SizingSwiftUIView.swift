//
//  SizingSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//

import SwiftUI

struct SizingSwiftUIView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            addSizing(title: "spacing2XS", subtitle: "2dp default", spacing: 2)
            addSizing(title: "spacingXSmall", subtitle: "4dp default", spacing: 4)
            Spacer()
        }.padding(.leading, 24).padding(.trailing, 24)
    }
    
    func addSizing(title: String, subtitle: String, spacing: CGFloat) -> AnyView {
        return AnyView(HStack() {
            VStack {
                Text(title).foregroundColor(.black)
                Text(subtitle).foregroundColor(.black)
            }
            Spacer()
            VStack(spacing: spacing) {
                Rectangle().fill(Color.black).frame(width: 200, height: 25)
                Rectangle().fill(Color.black).frame(width: 200, height: 25)
                Rectangle().fill(Color.black).frame(width: 200, height: 25)
            }
        })
    }
}

struct SizingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SizingSwiftUIView()
    }
}
