//
//  Recommandations.swift
//  Prismi
//
//  Created by apprenant68 on 22/09/2023.
//

import SwiftUI

struct Recommandations: View {
    @State private var alignmentLeading: TextAlignment = .leading
    @State private var alignmentTrealing: TextAlignment = .trailing
    var body: some View {
        ZStack{
            Color("Colorblue")
                .ignoresSafeArea()
            
            VStack{
                
                Text("Type de jeu")
                
                    .foregroundColor(Color("Coloryellowd"))
                    .foregroundColor(Color.black)
                    .bold()
                    .font(Font.custom("Inter-SemiBold.ttf",size: 60))
                
                    .padding(.bottom,(50))
                
                VStack{
                    HStack(spacing: 40.0){
                        Recommandations(color: Color("Coloryellowd"), Image(systemName: "Search"), textName: "Stratégie", multilineTextAlignement:$alignmentLeading)
                        Recommandations(color: Color("Coloryellowd"), Image(systemName: "Search"), textName: "Jeux de dés", multilineTextAlignement:$alignmentTrealing)
                    }
                    
                    
                    HStack(spacing: 60.0){
                        Recommandations(color: Color("Coloryellowd"), Image(systemName: "Search"), textName: "Ambiance", multilineTextAlignement:$alignmentLeading)
                        Recommandations(color: Color("Coloryellowd"), Image(systemName: "Search"), textName: "Memory", multilineTextAlignement:$alignmentTrealing)
                    }
                    
                    VStack{
                        HStack(spacing: 90.0){
                            VStack{
                                Button {
                                    //action
                                    
                                }label: {
                                    Image("Tractor")
                                }
                                Text("Géstion")
                                    .font(.title3)
                                    .foregroundColor(Color("Coloryellowd"))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                            }
                            VStack{
                                Button {
                                    //action
                                    
                                }label: {
                                    Image("Card")
                                }
                                Text("Cartes")
                                    .font(.title3)
                                    .foregroundColor(Color("Coloryellowd"))
                                    .multilineTextAlignment(.trailing)
                                    .bold()
                            }
                        }
                        
                        HStack(spacing: 50.0){
                            VStack{
                                Button {
                                    //action
                                    
                                }label: {
                                    Image(systemName: "magnifyingglass")
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(Color("Coloryellowd"))
                                        .font(.system(size: 65))
                                        .padding(.bottom,(1))
                                }
                                Text("Enquête")
                                    .font(.title3)
                                    .foregroundColor(Color("Coloryellowd"))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                            }
                            VStack{
                                Button {
                                    //action
                                    
                                }label: {
                                    Image( "Cooperation")
                                    
                                }
                                Text("Coopération")
                                    .font(.title3)
                                    .foregroundColor(Color("Coloryellowd"))
                                
                                    .multilineTextAlignment(.trailing)
                                    .bold()
                            }
                            
                            
                        }
                        
                        .padding()
                        
                        .padding(.bottom,(40))
                        VStack{
                
                                Button {
                                    //action
                                    
                                }label: {
                                    
                                    Text("C'est parti")
                                        .font(.title)
                                        .foregroundColor(Color("Colorblue"))
                                        .padding()
                                        .background(Color("Coloryellowd"))
                                        .foregroundColor(.white)
                                        .cornerRadius(20)
                                        .bold()
                                }
                                
                            }
                            
                            
                        }
                        .padding()
                    }
                }
            }
            
        }
        
    }
}
struct Recommandations_Previews: PreviewProvider {
    static var previews: some View {
        Recommandations()
    }
}
