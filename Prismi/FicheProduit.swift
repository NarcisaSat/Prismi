//
//  FicheProduit.swift
//  Prismi
//
//  Created by apprenant68 on 20/09/2023.
//

import SwiftUI

// FicheProduit est le nom de la View

struct FicheProduit: View {
    var chosenProduct: jeu
    
//    @Binding
    
    var body: some View {
            VStack {
                Capsule()
                    .foregroundColor(Color("Colorblued"))
                    .frame(width: 70, height: 38)
                    .offset(x: -155, y: -40)
                // Faire Foreach suer les images
                ScrollView(.horizontal)
                {
                    HStack {
                        Image(chosenProduct.image[0])
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.red)
                        Image(chosenProduct.image[1])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                    }
                    
                }
                
                ScrollView {
                    VStack(alignment: .leading) {
                        // Type(s) de jeu
                        Text(chosenProduct.type[0].rawValue)
                            .padding(10)
                            .font(Font.custom("Inter-Bold", size: 14))
                            .foregroundColor(Color("Coloryellowd"))
                            .background(Color("Colorblued"))
                            .cornerRadius(20)
                        // Titre du jeu
                        Text(chosenProduct.name)
                            .padding(.bottom, 10)
                            .foregroundColor(Color("Colorblued"))
                            .font(Font.custom("Inter-Bold", size: 28))
                        // Description du jeu
                        Text(chosenProduct.description)
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(Color("Colorblued"))
                            .font(Font.custom("Inter-Regular", size: 18))
                            .padding(.bottom,10)
                        HStack {
                            // Nombre de joueurs
                            Text("Nombre de joueurs : \(chosenProduct.nbPlayer)")
                                .foregroundColor(Color("Colorblue"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        HStack {
                            // Durée du jeu
                            Text("Durée du jeu : \(chosenProduct.time)")
                                .foregroundColor(Color("Colorblued"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        HStack {
                            // Complexité :
                            Text("Compléxité : \(chosenProduct.difficulty[0].rawValue)")
                                .foregroundColor(Color("Colorblued"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                        HStack {
                            // Prix du jeu de société
                            Text("Prix : \(chosenProduct.price)")
                                .foregroundColor(Color("Colorblued"))
                                .font(Font.custom("Inter-Bold", size: 18))
                        }
                    }
                }
                .padding(.bottom, 1)
                    // Si on clique sur découvrir on va vers un site externe
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
    
struct FicheProduit_Previews: PreviewProvider {
    static var previews: some View {
        FicheProduit(chosenProduct: hanabi)
    }
}
