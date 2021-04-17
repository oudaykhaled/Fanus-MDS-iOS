//
//  ContentView.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
        NavigationView {
          
            ScrollView{
                Group{
                VStack(alignment: .leading, spacing: 16) {
                    Spacer()
                    Image("scgroup").resizable()
                        .frame(width: 133.0, height: 66.0)

                  Text("Styleguide").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 34))
                    HStack {
                        NavigationLink(destination: ColorsSwiftUIView()) {
                            Text("Colors").foregroundColor(.black)
                        }.frame(width: 190 , height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                        NavigationLink(destination: SpacingSwiftUIView()) {
                            Text("Text").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                       
                    }
                    HStack{
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Elevation").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                        NavigationLink(destination: SpacingSwiftUIView()) {
                            Text("Spacing").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                    }
                    HStack {
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Sizing").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Radius").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                    }
                }.foregroundColor(.black).font(.custom("ArialMT", size: 20)).padding(.leading, 16).padding(.trailing, 16)
                
                
                
                VStack(alignment: .leading, spacing: 16) {
                    Spacer()
                  Text("Custom components").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 34))
                    HStack {
                        NavigationLink(destination: ColorsSwiftUIView()) {
                            Text("Amount").foregroundColor(.black)
                        }.frame(width: 190 , height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                        NavigationLink(destination: SpacingSwiftUIView()) {
                            Text("Avatar").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                       
                    }
                    HStack{
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Badges").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                        NavigationLink(destination: SpacingSwiftUIView()) {
                            Text("Buttons").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                    }
                    HStack {
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Icons").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Calendar").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                    }
                    HStack {
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Radio").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Separators").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        
                    }
                    HStack {
                        NavigationLink(destination: SizingSwiftUIView()) {
                            Text("Shapes").foregroundColor(.black)
                        }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                   
                        
                    }
                }.foregroundColor(.black).font(.custom("ArialMT", size: 20)).padding(.leading, 16).padding(.trailing, 16)
                    
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Spacer()
                      Text("Native components").foregroundColor(.black).font(.custom("Arial-BoldMT", size: 34))
                        HStack {
                            NavigationLink(destination: ColorsSwiftUIView()) {
                                Text("Card").foregroundColor(.black)
                            }.frame(width: 190 , height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: SpacingSwiftUIView()) {
                                Text("Checkbox").foregroundColor(.black)
                            }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                           
                        }
                        HStack{
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Loaders").foregroundColor(.black)
                            }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                            NavigationLink(destination: SpacingSwiftUIView()) {
                                Text("Input").foregroundColor(.black)
                            }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                        }
                        HStack {
                            NavigationLink(destination: SizingSwiftUIView()) {
                                Text("Snackbar").foregroundColor(.black)
                            }.frame(width: 190, height: 70).background(Color.white).cornerRadius(15).shadow(color: .gray, radius: 6, x: 0, y: 3)
                            
                        }
                    
                    }.foregroundColor(.black).font(.custom("ArialMT", size: 20)).padding(.leading, 16).padding(.trailing, 16)
                }.background(Color("background")).edgesIgnoringSafeArea(.all)
            }.navigationBarTitle("MDS Display App")
         
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
