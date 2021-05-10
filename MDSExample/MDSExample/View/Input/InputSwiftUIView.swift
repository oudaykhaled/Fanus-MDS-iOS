//
//  InputSwiftUIView.swift
//  MDSExample
//
//  Created by guest1 on 5/8/21.
//
import MDS
import SwiftUI

struct InputSwiftUIView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 0) {
                createInputTextFieldInput(title: "InputLabel", style: InputTextFieldStyles.inputLabelStyle).padding(.top, 24)
                createInputPasswordTextFieldInput(title: "Styled as a password field", style: InputTextFieldStyles.inputLabelStyle)
                Spacer()
            }.padding(.leading, 24).padding(.trailing, 24)
        }.background(Color("background")).edgesIgnoringSafeArea(.bottom).navigationBarTitle("", displayMode: .inline)
    }
    
    func createInputTextFieldInput(title: String, style: InputTextFieldStyle) -> AnyView {
        return AnyView(VStack(alignment: .leading, spacing: 0) {
            Text(title)
            InputTextFieldInput().frame(height: 80).padding(.top, 10)
        })
    }
    
    func createInputPasswordTextFieldInput(title: String, style: InputTextFieldStyle) -> AnyView {
        return AnyView(VStack(alignment: .leading, spacing: 0) {
            Text(title)
            InputPasswordTextFieldInput().frame(height: 80 ).padding(.top, 10)
        })
    }
    
    struct InputTextFieldInput: UIViewRepresentable {

        func makeUIView(context: Context) -> InputLabelTextField {
            let textfield = InputLabelTextField()
            textfield.textfieldChanged = { text in
                if let text = text, !text.isEmpty {
                    textfield.setErros(errorMessage: "Validation field", errorMessageSecondary: "5/4")
                } else {
                    textfield.removeErrors()
                }
            }
            return textfield
        }
        
        func updateUIView(_ uiView: InputLabelTextField, context: Context) {
            uiView.style = InputTextFieldStyles.inputLabelStyle
            uiView.setPlaceholder("Type “error” to get error message")
        }
    }
    
    struct InputPasswordTextFieldInput: UIViewRepresentable {
        
        func makeUIView(context: Context) -> InputPasswordTextfield {
            let textfield = InputPasswordTextfield()
            textfield.textfieldChanged = { text in
                if let text = text, !text.isEmpty {
                    textfield.setErros(errorMessage: "Wrong password")
                } else {
                    textfield.removeErrors()
                }
            }
            return textfield
        }
        
        func updateUIView(_ uiView: InputPasswordTextfield, context: Context) {
            uiView.style = InputTextFieldStyles.inputLabelStyle
            uiView.setPlaceholder("Password")
        }
    }
    
}

struct InputSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InputSwiftUIView()
    }
}
