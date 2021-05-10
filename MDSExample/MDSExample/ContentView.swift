//
//  ContentView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//




import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            
            
            ScrollView{
                
                VStack(alignment: .leading, spacing: 16){
                    
                    Group{
                        HStack{
                            Image("scgroup").resizable()
                                .frame(width : UIScreen.main.bounds.width/2.5, height: 66.0)
                        }.padding(.leading, 16).padding(.bottom, 32).padding(.top, 32)
                        
                        Text("Styleguide").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 34)).padding(.leading, 16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: ColorsSwiftUIView()) {
                                Text("Colors").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: TextSwiftUIView()) {
                                Text("Text").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: ElevationSwiftUIView()) {
                                Text("Elevation").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: SpacingSwiftUIView()) {
                                Text("Spacing").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Sizing").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: RadiusSwiftUIView()) {
                                Text("Radius").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        Text("Custom Components").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 34)).padding(.leading, 16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Amount").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: RadiusSwiftUIView()) {
                                Text("Avatar").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Icons").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: RadiusSwiftUIView()) {
                                Text("Calendar").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Radio").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: RadiusSwiftUIView()) {
                                Text("Seperator").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                    }
                    
                    Group {
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Shapes").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Shapes").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3).hidden()
                            
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        
                        Text("Native Components").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 34)).padding(.leading, 16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Card").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: RadiusSwiftUIView()) {
                                Text("Checkbox").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Loaders").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: InputSwiftUIView()) {
                                Text("Input").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                        
                        HStack(spacing : 16){
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Snackbar").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Snackbar").foregroundColor(.black).fixedSize(horizontal: true, vertical: false).frame(maxWidth : .infinity)
                            }.frame(height : 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3).hidden()
                            
                        }.frame(
                            minWidth: 0,
                            maxWidth: .infinity).padding(.leading,16).padding(.trailing,16)
                    }
                    
                    
                    Spacer()
                }.background(Color("background"))
            }.edgesIgnoringSafeArea(.bottom).navigationBarTitle("MDS Display App")
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
