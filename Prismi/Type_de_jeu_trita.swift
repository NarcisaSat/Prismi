////
////  Type_de_jeu_trita.swift
////  Prismi
////
////  Created by Apprenant77 on 26/09/2023.
////
//
//import SwiftUI
//
//struct Type_de_jeu_trita: View {
//    @State private var alignmentLeading: TextAlignment = .leading
//    @State private var alignmentTrealing: TextAlignment = .trailing
//    var body: some View {
//        ZStack{
//            Color("Colorgreyt")
//                .ignoresSafeArea()
//            
//            VStack{
//            
//                                
//                Text("Type de jeu")
//                    .foregroundColor(Color("Colorbluet"))
//                    .foregroundColor(Color.black)
//                    .bold()
//                    .font(Font.custom("Inter-Bold",size: 30))
//                
//                    .padding(15)
//                
//                Group{
//                    HStack(spacing: 10.0) {
//                        RowGame(color: Color("Colorbluet"),
//                                filledImage: "T-Stratégie-ON-big",
//                                emptyImage:"T-Stratégie-OFF-big",
//                                textName: "Stratégie", multilineTextAlignement:$alignmentLeading)
//                        
//                        RowGame(color: Color("Colorbluet"), filledImage: "T-Jeux-de-des-ON-big",
//                                emptyImage:"T-Jeux-de-des-OFF-big",textName: "Jeux de dés", multilineTextAlignement:$alignmentTrealing)
//                    }
//                    
//                    HStack(spacing: 10.0){
//                        RowGame(color: Color("Colorbluet"), filledImage: "T-Ambiance-ON-big",
//                                emptyImage:"T-Ambiance-OFF-big", textName: "Ambiance", multilineTextAlignement:$alignmentLeading)
//                        RowGame(color: Color("Colorbluet"), filledImage: "T-Memoire-ON-big",   emptyImage:"T-Memoire-OFF-big", textName: "Mémoire", multilineTextAlignement:$alignmentTrealing)
//                        
//                    }
//                    
//                    Group {
//                        HStack(spacing: 10.0){
//                            RowGame(color: Color("Colorbluet"), filledImage: "T-Gestion-ON-big",   emptyImage:"T-Gestion-OFF-big", textName: "Gestion", multilineTextAlignement:$alignmentLeading)
//                            RowGame(color: Color("Colorbluet"), filledImage: "T-Cartes-ON-big",   emptyImage:"T-Cartes-OFF-big", textName: "Cartes", multilineTextAlignement:$alignmentTrealing)
//                        }
//                        HStack(spacing: 10.0){
//                            RowGame(color: Color("Colorbluet"), filledImage: "T-Enquete-ON-big",   emptyImage:"T-Enquete-OFF-big", textName: "Enquête", multilineTextAlignement:$alignmentLeading)
//                            RowGame(color: Color("Colorbluet"), filledImage: "T-Cooperation-ON-big",   emptyImage:"T-Cooperation-OFF-big", textName: "Coopération", multilineTextAlignement:$alignmentTrealing)
//                            
//                        }
//                        
//                      .padding()
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
//                                        .foregroundColor(Color("Colorgreyt"))
//                                        .fontWeight(.bold)
//                                        .frame(width: 250, height: 60)
//                                        .background(Color("Colorbluet"))
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
//struct Type_de_jeu_trita_Previews: PreviewProvider {
//    static var previews: some View {
//        Type_de_jeu_trita()
//    }
//}
