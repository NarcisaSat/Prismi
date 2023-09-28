//
//  Type_de_jeu.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI

struct Type_de_jeu: View {
    
    @State private var alignmentLeading: TextAlignment = .leading
    @State private var alignmentTrealing: TextAlignment = .trailing
    
    @Binding var chosentType: String
    @Binding var lastSetting: Bool
//    @Binding var selectedType: String
////    2 Binding Color
    @Binding var selectedColorFont: Color
    @Binding var selectedColorBack: Color
    
    var body: some View {
        ZStack{
          selectedColorBack
                .ignoresSafeArea()
            
            VStack{
            
                Text("Type de jeu")
//                    .foregroundColor(Color("Coloryellow"))
//                    .foregroundColor(Color.black)
                    .bold()
                    .font(Font.custom("Inter-Bold",size: 30))
                
                    .padding(.bottom)
                
                Group{
                    HStack(spacing: 10.0) {
                        RowGame(color: Color("Coloryellow"),
                                filledImage: "VN-Stratégie-ON-big",
                                emptyImage:"VN-Stratégie-OFF-big",
                                textName: "Stratégie", multilineTextAlignement:$alignmentLeading, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                        
                        RowGame(color: Color("Coloryellow"), filledImage: "VN-Jeux-de-des-ON-big",
                                emptyImage:"VN-Jeux-de-des-OFF-big",textName: "Jeux de dés", multilineTextAlignement:$alignmentTrealing, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                    }
                    
                    HStack(spacing: 10.0){
                        RowGame(color: Color("Coloryellow"), filledImage: "VN-Ambiance-ON-big",
                                emptyImage:"VN-Ambiance-OFF-big", textName: "Ambiance", multilineTextAlignement:$alignmentLeading, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                        
                        
                        RowGame(color: Color("Coloryellow"), filledImage: "VN-Memoire-ON-big",   emptyImage:"VN-Memoire-OFF-big", textName: "Mémoire", multilineTextAlignement:$alignmentTrealing, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                        
                    }
                    
                    Group {
                        HStack(spacing: 10.0){
                            RowGame(color: Color("Coloryellow"), filledImage: "VN-Gestion-ON-big",   emptyImage:"VN-Gestion-OFF-big", textName: "Gestion", multilineTextAlignement:$alignmentLeading, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                            
                            RowGame(color: Color("Coloryellow"), filledImage: "VN-Cartes-ON-big",   emptyImage:"VN-Cartes-OFF-big", textName: "Cartes", multilineTextAlignement:$alignmentTrealing, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                        }
                        
                        HStack(spacing: 10.0){
                            RowGame(color: Color("Coloryellow"), filledImage: "VN-Enquete-ON-big",   emptyImage:"VN-Enquete-OFF-big", textName: "Enquête", multilineTextAlignement:$alignmentLeading, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                            
                            
                            RowGame(color: Color("Coloryellow"), filledImage: "VN-Cooperation-ON-big",   emptyImage:"VN-Cooperation-OFF-big", textName: "Coopération", multilineTextAlignement:$alignmentTrealing, typeButton: $chosentType, selectedColorFont: $selectedColorFont)
                        }
                        .padding()
                        
                        VStack{
                            
                            ZStack{
                                
                                Button {
                                    //action
                                    lastSetting.toggle()
//                                    mesRecomandations()
                                    
                                }label: {
                                    
                                    Text("C'est parti")
                                        .foregroundColor(Color("Colorblue"))
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 60)
                                        .background(Color("Coloryellow"))
                                        .cornerRadius(10)
                                }
                                }
                            }
                        }
                        .padding()
                    }
                }
            .foregroundColor(selectedColorFont)
            }
        }
    }
struct Type_de_jeu_Previews: PreviewProvider {
    static var previews: some View {
//        il faut renseigner les mêmes propriétés qu'en haut en plus de .constant()
        Type_de_jeu(chosentType: .constant(""), lastSetting: .constant(false), selectedColorFont: .constant(Color("Coloryellowd")), selectedColorBack: .constant(Color("Colorblued"))
    )}
                    
}
                    
