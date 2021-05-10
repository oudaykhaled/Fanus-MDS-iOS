//
//  TextSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 5/6/21.
//
import MDS
import SwiftUI

struct TextSwiftUIView: View {
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                Text("The fanus product goes to respond to the  dynamic style set by the user.").multilineTextAlignment(.center).padding(.top,32)
                Group {
                    addText(text: "H1", name: "textAppearanceHeadline1", size: "96 pt", style: MDSLabelStyles.textAppearanceHeadline1)
                    addText(text: "H2", name: "textAppearanceHeadline2", size: "60 pt", style: MDSLabelStyles.textAppearanceHeadline2)
                    addText(text: "H3", name: "textAppearanceHeadline3", size: "48 pt", style: MDSLabelStyles.textAppearanceHeadline3)
                    addText(text: "H4", name: "textAppearanceHeadline4", size: "34 pt", style: MDSLabelStyles.textAppearanceHeadline4)
                    addText(text: "H5", name: "textAppearanceHeadline5", size: "24 pt", style: MDSLabelStyles.textAppearanceHeadline5)
                    addText(text: "H6", name: "textAppearanceHeadline6", size: "20 pt", style: MDSLabelStyles.textAppearanceHeadline6)
                    addText(text: "Subtitle1", name: "textAppearanceSubtitle1", size: "16sp", style: MDSLabelStyles.textAppearanceSubtitle1)
                    addText(text: "Subtitle1.Medium", name: "textAppearanceSubtitle1Medium", size: "16sp", style: MDSLabelStyles.textAppearanceSubtitle1Medium)
                    addText(text: "Subtitle2", name: "textAppearanceSubtitle2", size: "14sp", style: MDSLabelStyles.textAppearanceSubtitle2)
                    addText(text: "Subtitle2.Medium", name: "textAppearanceSubtitle2Medium", size: "14sp", style: MDSLabelStyles.textAppearanceSubtitle2Medium)
                }
                Group {
                    addText(text: "Body1", name: "textAppearanceBody1", size: "16sp", style: MDSLabelStyles.textAppearanceBody1)
                    addText(text: "Body1.Medium", name: "textAppearanceBody1Medium", size: "16sp", style: MDSLabelStyles.textAppearanceBody1Medium)
                    addText(text: "Body2", name: "textAppearanceBody2", size: "14sp", style: MDSLabelStyles.textAppearanceBody2)
                    addText(text: "Body2.Medium", name: "textAppearanceBody2Medium", size: "14sp", style: MDSLabelStyles.textAppearanceBody2Medium)
                    addText(text: "Button", name: "textAppearanceButton", size: "14sp", style: MDSLabelStyles.textAppearanceButton)
                    addText(text: "Caption", name: "textAppearanceCaption", size: "12sp", style: MDSLabelStyles.textAppearanceCaption)
                    addText(text: "Caption.Medium", name: "textAppearanceCaptionMedium", size: "12sp", style: MDSLabelStyles.textAppearanceCaptionMedium)
                    addText(text: "Overline", name: "textAppearanceOverline", size: "10 pt", style: MDSLabelStyles.textAppearanceOverline)
                    addText(text: "Overline.Medium", name: "textAppearanceOverlineMedium", size: "10 pt", style: MDSLabelStyles.textAppearanceOverlineMedium)
                    addText(text: "FormLabel", name: "textAppearanceFormLabel", size: "16 pt", style: MDSLabelStyles.textAppearanceFormLabel)
                }
                Spacer()
            }.padding(.leading, 24).padding(.trailing, 24)
        }.background(Color("background")).edgesIgnoringSafeArea(.bottom).navigationBarTitle("", displayMode: .inline)
    }
    
    func addText(text: String, name: String, size: String, style: MDSLabelStyle) -> AnyView {
        return AnyView(VStack(alignment: .leading, spacing: 0) {
            createMDSLabel(text: text, style: style)
            Text(name)
            Text(size)
            Divider().background(Color.white.frame(height: 1)).padding(EdgeInsets(top: 10, leading: 50 , bottom: 10, trailing: 30))
        })
    }
    
    struct createMDSLabel: UIViewRepresentable {
        private var text: String
        private var style: MDSLabelStyle
        
        init(text: String, style: MDSLabelStyle) {
            self.text = text
            self.style = style
        }
        
        func makeUIView(context: Context) -> MDSLabel {
            let label = MDSLabel()
            return label
        }
        
        func updateUIView(_ uiView: MDSLabel, context: Context) {
            uiView.style = style
            uiView.text = text
        }
    }
}

struct TextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextSwiftUIView()
    }
}
