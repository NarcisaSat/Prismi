//
//  Ludotheque.swift
//  Prismi
//
//  Created by apprenant68 on 20/09/2023.
//

//import SwiftUI
//
//struct Ludotheque: View {
//    @State private var recommandations: [jeu] = [hanabi,jeuaventuriersdurail,sherlock]
//    @State private var undoFavorite = true
//    
//    var body: some View {
//        VStack {
//            Section(header: Text("Ma Ludothèque")
//                .foregroundColor(Color("Colorblue"))
//                .font(Font.custom("Inter-Bold", size:25))
//            ) {
//                
//                List(recommandations){ eachrecommandations in
//                    
//                    HStack {
//                        // Image du jeu
//                        Image(eachrecommandations.image[0])
//                            .resizable()
//                            .frame(width: 110.0, height: 110.0)
//                        
//                        VStack {
//                            // Titre du jeu
//                            Text(eachrecommandations.name)
//                                .font(Font.custom("Inter-Bold", size:18))
//                                .foregroundColor(Color("Colorblue"))
//                                .multilineTextAlignment(.center)
//                            
//                           
//                            // Description du jeu
//                            Text(eachrecommandations.description)
//                                .font(Font.custom("Inter-Medium", size:15))
//                                .foregroundColor(Color("Colorblue"))
//                                .frame(height: 100)
//                            
//                        }
//                        Button {
////                            
//                        } label: {
//                            Image(systemName: undoFavorite ? "bookmark.fill" : "bookmark")
//                                .foregroundColor(Color("Colorblue"))
//                        }
//
//                       
//                    }
//                }
//                .listStyle(.plain)
//            }
//        }
//    }
//}
//struct Ludotheque_Previews: PreviewProvider {
//    static var previews: some View {
//        Ludotheque()
//    }
//}
