//
//  FicheProduitD.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI

struct FicheProduitD: View {
    
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
                        .font(Font.custom("Inter-Bold", size: 14))
                        .background(Color("Colorblued"))
                        .foregroundColor(Color("Coloryellowd"))
                        .cornerRadius(20)
                       

                    // Titre du jeu
                    Text(hanabi.name)
                        .padding(.bottom, 10)
                        .foregroundColor(Color("Colorblued"))
                        .font(Font.custom("Inter-Bold", size: 28))
                    // Description du jeu
                    Text(hanabi.description)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color("Colorblued"))
                        .font(Font.custom("Inter-Regular", size: 18))
                        .padding(.bottom,10)
                    HStack {
                        // Nombre de joueurs
                        Text("Nombre de joueurs :")
                            .foregroundColor(Color("Colorblued"))
                            .font(Font.custom("Inter-Bold", size: 18))
                    }
                    HStack {
                        // Durée du jeu
                        Text("Durée du jeu :")
                            .foregroundColor(Color("Colorblued"))
                            .font(Font.custom("Inter-Bold", size: 18))
                    }
                    HStack {
                        // Complexité :
                        Text("Compléxité :")
                            .foregroundColor(Color("Colorblued"))
                            .font(Font.custom("Inter-Bold", size: 18))
                    }
                    HStack {
                        // Prix du jeu de société
                        Text("Prix :")
                            .foregroundColor(Color("Colorblued"))
                            .font(Font.custom("Inter-Bold", size: 18))
                    }
                }
               
//                     Si on clique sur découvrir on va vers un site externe
//                    Button(action: {}) {
//                        Text("Découvrir")
//                            .foregroundColor(Color("Coloryellow"))
//                            .fontWeight(.bold)
//                            .frame(width: 250, height: 60)
//                            .background(Color("Colorblue"))
//                            .cornerRadius(10)
//                            .padding()
//                    }.frame(maxWidth: .infinity)
                }
            .padding(.horizontal)
            }
      
        }
        // Ajouter un retour arriere vers la page recommandations

struct FicheProduitD_Previews: PreviewProvider {
    static var previews: some View {
        FicheProduitD()
    }
}
