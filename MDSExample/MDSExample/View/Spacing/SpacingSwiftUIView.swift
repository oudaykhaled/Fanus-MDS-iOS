//
//  SpacingSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//

import SwiftUI

struct SpacingSwiftUIView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            addSpacing(title: "sizer2XS", subtitle: "2dp default", valuetitle: "2dp default", padding: 2)
            addSpacing(title: "spacingXSSmall", subtitle: "4dp default", valuetitle: "4dp default", padding: 4)
            Spacer()
        }.padding(.leading, 24).padding(.trailing, 24)
    }
    
    func addSpacing(title: String, subtitle: String, valuetitle: String, padding: CGFloat) -> AnyView {
        return AnyView(HStack {
            VStack {
                Text(title).foregroundColor(.black)
                Text(subtitle).foregroundColor(.black)
            }
            Spacer()
            VStack {
                VStack {
                    Text(valuetitle).foregroundColor(.black)
                }.frame(minWidth: 0, maxWidth: .infinity).background(Color.blue)
            }.frame(width: 200).padding(padding).background(Color.black)
        })
    }
}

struct SpacingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SpacingSwiftUIView()
    }
}
