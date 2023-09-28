//
//  FicheProduitT.swift
//  Prismi
//
//  Created by Apprenant77 on 27/09/2023.
//

import SwiftUI

struct FicheProduitT: View {
    var body: some View {
        VStack {
                    // Faire Foreach suer les images
                    ScrollView(.horizontal)
                    {
                        HStack {
                            Image(jeuaventuriersdurail.image[0])
                                .resizable()
                                .frame(width: 300, height: 300)
                                .aspectRatio(contentMode: .fit)
                            Image(jeuaventuriersdurail.image[1])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 300)
                        }
                        
                    }
                    
                    VStack(alignment: .leading) {
                        // Type(s) de jeu
                        Text(hanabi.type[0].rawValue)
                            .padding(10)
                            .foregroundColor(Color("Colorbluet"))
                            .background(Color("Colorgreyt"))
                            .cornerRadius(20)
                            .font(.subheadline)
                        
                        // Titre du jeu
                        Text(hanabi.name)
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                        // Description du jeu
                        Text(hanabi.description)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(Color("Colorgreyt"))
                            .font(Font.custom("Inter-Regular", size: 18))
                            .padding(.bottom,10)
                        HStack {
                            // Nombre de joueurs
                            Text("Nombre de joueurs :")
                                .foregroundColor(Color("Colorgreyt"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        HStack {
                            // Durée du jeu
                            Text("Durée du jeu :")
                                .foregroundColor(Color("Colorgreyt"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        HStack {
                            // Complexité :
                            Text("Compléxité :")
                                .foregroundColor(Color("Colorgreyt"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        HStack {
                            // Prix du jeu de société
                            Text("Prix :")
                                .foregroundColor(Color("Colorgreyt"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        //                Button(action: {}) {
                        //                    Text("Découvrir")
                        //                        .foregroundColor(Color("Colorbluet"))
                        //                        .fontWeight(.bold)
                        //                        .frame(width: 250, height: 60)
                        //                        .background(Color("Colorgreyt"))
                        //                        .cornerRadius(10)
                        //                        .padding()
                        //                }.frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal)
            }
        }



        struct FicheProduitT_Previews: PreviewProvider {
            static var previews: some View {
                FicheProduitT()
            }
        }
        
