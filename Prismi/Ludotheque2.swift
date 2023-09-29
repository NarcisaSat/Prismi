//
//  Ludotheque2.swift
//  Prismi
//
//  Created by Apprenant77 on 28/09/2023.
//

import SwiftUI

struct Ludotheque2: View {
        // @State is not used for constant data
        let recommandations: [jeu] = [hanabi, jeuaventuriersdurail, sherlock]
        
        @State private var showModal = false
        var selectedTypeFromSetting: String
        var testColor: Color
        
        
        var filteredRecommantionList: [jeu] {
            if selectedTypeFromSetting != "" {
               return recommandations.filter { oneRecommandation in
                   oneRecommandation.type.contains {
                       $0.rawValue == selectedTypeFromSetting
                   }
                }
            }
            
            return recommandations
        }
        
        
        
        var body: some View {
            NavigationView { // Wrap your content in a NavigationView
                VStack {
                    Button("Filtre") {
                        showModal.toggle()
                    }
                    .offset(x: 150, y: 0)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Colorblued"))
//                    .background(
//                        RoundedRectangle(cornerRadius: 10)
//                            .foregroundColor(Color("Coloryellowd"))
//                            .frame(width: 70, height: 38)
//                            .offset(x: 150, y: 0)
//                        )
                    Section(header: Text("Ma Ludothèque")
    //                    .foregroundColor(Color("Colorblue"))
                        .font(Font.custom("Inter-Bold", size: 25))
                    ) {
                        List {
                            ForEach(filteredRecommantionList) { recommandation in
                                NavigationLink(destination: FicheProduit(chosenProduct: recommandation)) {
                                    HStack { // Beginning of HStack
                                        // Image du jeu
                                        Image(recommandation.image[0])
                                            .resizable()
                                            .frame(width: 110.0, height: 110.0)
                                        
                                        VStack(alignment: .leading) {
                                            // Titre du jeu
                                            Text(recommandation.name)
                                                .font(Font.custom("Inter-Bold", size: 18))
    //                                            .foregroundColor(Color("Colorblue"))
                                            
                                            // Description du jeu
                                            Text(recommandation.description)
                                                .lineLimit(2)
                                                .font(Font.custom("Inter-Medium", size: 15))
    //                                            .foregroundColor(Color("Colorblue"))
                                                .frame(height: 100)
                                        }
                                        
                                        if recommandation.bookmark {
                                            Image(systemName: "bookmark.fill")
    //                                            .foregroundColor(Color("Colorblue"))
                                        } else {
                                            Image(systemName: "bookmark")
    //                                            .foregroundColor(Color("Colorblue"))
                                        }
                                    } // End of HStack
                                }
                            }
                            
                        }
                       
                        .listStyle(.plain)
                    } // Début de la modale
    //                .toolbar {
    //                    ToolbarItem(placement: .navigationBarTrailing) {
    //                        Button("Filtre") {
    //                            showModal.toggle()
    //                        }
    //                    }
    //                }
                    .sheet(isPresented: $showModal) {
                        // Here, you can present a modal view or perform the appropriate action
                        Text("Filtre Modal")
                        Reglages(dismissModal: $showModal)
                    }
                }
                .foregroundStyle(testColor)
            }
            
        }
    }


    
        
    
struct Ludotheque2_Previews: PreviewProvider {
    static var previews: some View {
        Ludotheque2(selectedTypeFromSetting: "", testColor:(Color("Colorblued")))
    }
}
var previews: some View {
    MesRecomandations(selectedTypeFromSetting: "", testColor: .blue)
}
