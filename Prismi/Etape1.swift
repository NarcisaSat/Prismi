//
//  Etape1.swift
//  Prismi
//
//  Created by apprenant68 on 13/09/2023.
//

import SwiftUI

struct Etape1: View {
    @State private var myBackColor: Color = Color("Colorblue")
    @State private var myTextColor: Color = Color("Coloryellow")
    @State private var myButtonTextColor: Color = Color("Colorblue")
    @State private var buttonison = false
    
    @Binding var startOfSetting: Bool
    @Binding var selectedType: String
    @Binding var selectedAccessFont: Color
    @Binding var selectedAccessBack: Color
    
    var body: some View {
        NavigationStack {
            ZStack {
                myBackColor
                    .ignoresSafeArea()
                
                
                
                VStack(alignment: .leading) {
                    
                    Text ("Bienvenue\nsur prismi 🙂")
                        .font(Font.custom("Inter-Bold", size: 40))
//                        .foregroundColor(Color("Coloryellow"))
                        .padding(.vertical)
                    
                    Text ("L’application qui sélectionne les jeux de société adaptés à votre vision.")
                        .font(Font.custom("Inter-Regular", size: 25))
//                        .foregroundColor(Color("Coloryellow"))
                    
                    Spacer()
                    
                    Text ("Votre type de daltonisme :")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.vertical)
//                        .foregroundColor(Color("Coloryellow"))
                    
                    
                    VStack(alignment: .leading ,spacing: 20.0){
                        HStack {
                            Button {
                                myBackColor = Color("Colorblued")
                                myTextColor =  Color("Coloryellowd")
                                myButtonTextColor = Color("Colorblued")
                                
                                selectedAccessFont = myTextColor
                                selectedAccessBack = myButtonTextColor
                                
                            } label: {
                                Image(systemName: "eye")
                                    .font(.system(size: 30))
//                                    .foregroundColor(Color("Coloryellow"))
                                
                                Text("Deutéranopie")
                                    .font(.system(size: 25))
//                                    .foregroundColor(Color("Coloryellow"))
                            }
                        }
                        
                        HStack {
                            Button {
                                myBackColor = Color("Colorbluet")
                                myTextColor =  Color("Colorgreent")
                                myButtonTextColor = Color("Colorbluet")
                            } label: {
                                Image(systemName: "eye")
                                    .font(.system(size: 30))
//                                    .foregroundColor(Color("Coloryellow"))
                                
                                Text("Tritanopie")
                                    .font(.system(size: 25))
//                                    .foregroundColor(Color("Coloryellow"))
                            }
                        }
                        
                        HStack {
                            Button {
                                myBackColor = Color("Colorblue")
                                myTextColor =  Color("Coloryellow")
                                myButtonTextColor = Color("Colorblue")
                            } label: {
                                Image(systemName: "eye.fill")
                                    .font(.system(size: 30))
//                                    .foregroundColor(Color("Coloryellow"))
                                
                                Text("Je ne sais pas")
                                    .font(.system(size: 25))
//                                    .foregroundColor(Color("Coloryellow"))
                            }
                        }
                    }
                   
                    Spacer()
                    
                    HStack() {
                        Spacer()
                        NavigationLink {
                            ButtonjoueurSwiftUIView(stepTwoSetting: $startOfSetting, selectedType: $selectedType, selectedColorFont: $selectedAccessFont, selectedColorBack: $selectedAccessBack)
                        } label: {
                            Text("Découvrir")
                                .foregroundColor(myButtonTextColor)
                                .fontWeight(.bold)
                                .frame(width: 250, height: 60)
                                .background(myTextColor)
                                .cornerRadius(10)
                        }
                        Spacer()
                        
                    }
                    
                    
                    .padding()
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
                .foregroundColor(myTextColor)
            }
            
        }
        
    }
    
    // finVStack
}
struct Etape1_Previews: PreviewProvider {
    static var previews: some View {
        Etape1(startOfSetting: .constant(false), selectedType: .constant(""), selectedAccessFont: .constant(.red), selectedAccessBack: .constant(.red))
    }
}
