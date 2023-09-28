////
////  Type_de_jeu_deta.swift
////  Prismi
////
////  Created by Apprenant77 on 26/09/2023.
////
//
//import SwiftUI
//
//struct Type_de_jeu_deta: View {
//   
//    @State private var alignmentLeading: TextAlignment = .leading
//    @State private var alignmentTrealing: TextAlignment = .trailing
//  
//    var body: some View {
//        ZStack{
//            Color("Colorblued")
//                .ignoresSafeArea()
//            
//            VStack{
//                                
//                Text("Type de jeu")
//                    .foregroundColor(Color("Coloryellowd"))
//                    .foregroundColor(Color.black)
//                    .bold()
//                    .font(Font.custom("Inter-Bold",size: 30))
//                
//                    .padding(.bottom)
//                
//                Group{
//                    HStack(spacing: 10.0) {
//                        RowGame(color: Color("Coloryellowd"),
//                                filledImage: "D-Stratégie-ON-big",
//                                emptyImage:"D-Stratégie-OFF-big",
//                                textName: "Stratégie", multilineTextAlignement:$alignmentLeading, , typeButton: $chosentType)
//                        
//                        RowGame(color: Color("Coloryellowd"), filledImage: "D-Jeux-de-des-ON-big",
//                                emptyImage:"D-Jeux-de-des-OFF-big",textName: "Jeux de dés", multilineTextAlignement:$alignmentTrealing)
//                    }
//                    
//                    HStack(spacing: 10.0){
//                        RowGame(color: Color("Coloryellowd"), filledImage: "D-Ambiance-ON-big",
//                                emptyImage:"D-Ambiance-OFF-big", textName: "Ambiance", multilineTextAlignement:$alignmentLeading)
//                        RowGame(color: Color("Coloryellowd"), filledImage: "D-Memoire-ON-big",   emptyImage:"D-Memoire-OFF-big", textName: "Mémoire", multilineTextAlignement:$alignmentTrealing)
//                        
//                    }
//                    
//                    Group {
//                        HStack(spacing: 10.0){
//                            RowGame(color: Color("Coloryellowd"), filledImage: "D-Gestion-ON-big",   emptyImage:"D-Gestion-OFF-big", textName: "Gestion", multilineTextAlignement:$alignmentLeading)
//                            RowGame(color: Color("Coloryellowd"), filledImage: "D-Cartes-ON-big",   emptyImage:"D-Cartes-OFF-big", textName: "Cartes", multilineTextAlignement:$alignmentTrealing)
//                            
//                            
//                        }
//                        
//            HStack(spacing: 10.0){
//            RowGame(color: Color("Coloryellowd"), filledImage: "D-Enquete-ON-big",   emptyImage:"D-Enquete-OFF-big", textName: "Enquête", multilineTextAlignement:$alignmentLeading)
//            RowGame(color: Color("Coloryellowd"), filledImage: "D-Cooperation-ON-big",   emptyImage:"D-Cooperation-OFF-big", textName: "Coopération", multilineTextAlignement:$alignmentTrealing)
//                            
//                        }
//                        
//                        .padding()
//                        
//                        VStack{
//                            
//                            ZStack{
//                                
//                                Button {
//                                    //action
//                                    
//                                }label: {
//                                    
//                                    Text("C'est parti")
//                                        .foregroundColor(Color("Colorblued"))
//                                        .fontWeight(.bold)
//                                        .frame(width: 250, height: 60)
//                                        .background(Color("Coloryellowd"))
//                                        .cornerRadius(10)
//                                }
//                                }
//                            }
//                        }
//                        .padding()
//                    }
//                }
//            }
//        }
//    }
//
//struct Type_de_jeu_deta_Previews: PreviewProvider {
//    static var previews: some View {
//        Type_de_jeu_deta()
//    }
//}
