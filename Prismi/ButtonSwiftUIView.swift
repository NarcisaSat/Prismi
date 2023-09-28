//
//  ButtonSwiftUIView.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI
import SwiftUI

struct ButtonSelect: Identifiable{
    var id = UUID()
    var value: Int
    var selected: Bool
}

struct ButtonjoueurSwiftUIView: View {
    @State private var myTextColor: Color = Color("Coloryellow")
    @State private var myBacktColor: Color = Color("Colorblue")
    @State private var myButtonTextColor: Color = Color("Colorblue")
    
    @Binding var stepTwoSetting: Bool
    @Binding var selectedType: String
    @Binding var selectedColorFont: Color
    @Binding var selectedColorBack: Color
    
    //  On a besoin de récupérer la sélection de l'un des Button pour le sortir de la boucle ForEach donc on passe par un Optional (ButtonSelect?) pour lui dire qu'il n'a pas encore d'information et qu'il va en avoir une lors du click.
    @State private var selectedNbPlayers: ButtonSelect?
    
    //  L'array va être amener à changer donc on le passe en @State.
    @State private var array = [
        ButtonSelect(value: 1, selected: false),
        ButtonSelect(value: 2, selected: false),
        ButtonSelect(value: 3, selected: false),
        ButtonSelect(value: 4, selected: false),
        ButtonSelect(value: 5, selected: false),
        ButtonSelect(value: 6, selected: false),
        ButtonSelect(value: 7, selected: false),
        ButtonSelect(value: 8, selected: false),
        ButtonSelect(value: 9, selected: false),
        
    ]
    
    //  Ici vous avez le cerveau de l'action des Buttons, c'est placé dans une fonction pour éviter un code trop long.
    //  Comment ça fonctionne:
    func playerSelection(index: Int) {
        //  On a besoin d'un index (position dans l'array) pour savoir sur quel Button on click.
        //  Suite à ça on donne l'info du Button choisis à notre optional selectedNbPlayers.
        array[index].selected.toggle()
        selectedNbPlayers = array[index]
        
        //  Puis on utilise un block de condition qui regarde la valeur de l'élément sur lequel on click.
        if array[index].selected {
            //          Chacun des éléments avant le Button sélectionné doivent être true pour afficher le notre de joueur correspondant.
            for selectedIndex in 0..<array[index].value {
                array[selectedIndex].selected = true
            }
        }
        //      Sinon si le Button sélectionné devient false alors tous les éléments après lui doivent être désélectionné.
        else if !array[index].selected {
            for unselectedIndex in array[index].value-1..<array[8].value {
                array[unselectedIndex].selected = false
            }
        }
        //      Sinon lorsque l'on click sur le Button même on le désélectionne.
        else {
            array[index].selected = false
        }
    }
    
    
    var arrayGrid = [
        GridItem(.adaptive(minimum: 100, maximum: 150)),
        GridItem(.adaptive(minimum: 100, maximum: 150)),
        GridItem(.adaptive(minimum: 100, maximum: 150)),
    ]
    
    var body: some View {
        ZStack {
            selectedColorBack
                .ignoresSafeArea()
            VStack(spacing: 40) {
                
                //              Ici on affiche le nombre de joueur en fonction de la valeur de notre optional.
                //              Si elle est vide, on a aucun joueur, sinon on a le nombre de joueur sélectionné.
                if selectedNbPlayers?.value == nil {
                    Text("0 joueur")
                        .font(.custom("Inter-Bold", size: 30))
                }
                if let unwrappedSelection = selectedNbPlayers {
                    if !unwrappedSelection.selected {
                        Text("\(unwrappedSelection.value-1) joueurs")
                            .font(.custom("Inter-Bold", size: 30))
                    } else {
                        Text("\(unwrappedSelection.value) joueurs")
                            .font(.custom("Inter-Bold", size: 30))
                    }
                }
                //                Text("\()")
                LazyVGrid(columns: arrayGrid) {
                    ForEach(array.indices, id: \.self) { index in
                        Button {
                            //                          Ici on appel notre fonction qui sert d'inteligence pour les Buttons
                            playerSelection(index: index)
                            
                            //                            Ce code à été placer dans une fonction plus haut si jamais v
                            
                            //                            array[index].selected.toggle()
                            //                            selectedNbPlayers = array[index]
                            //                            if array[index].selected {
                            //                                for selectedIndex in 0..<array[index].value {
                            //                                    array[selectedIndex].selected = true
                            //                                }
                            //                            }
                            //                            else if !array[index].selected {
                            //                                for unselectedIndex in array[index].value-1..<array[8].value {
                            //                                    array[unselectedIndex].selected = false
                            //                                }
                            //                            }
                            //                            else {
                            //                                array[index].selected = false
                            //                            }
                        } label: {
                            Image(array[index].selected ?  "person-active" : "person-inactive")
                        }
                        
                        
                    }
                    
                }
                HStack {
                    Spacer()
                    NavigationLink {
                        Type_de_jeu(chosentType: $selectedType, lastSetting: $stepTwoSetting, selectedColorFont: $selectedColorFont, selectedColorBack: $selectedColorBack)
                    } label: {
                        
                        Text("Suivant")
                            
                            .fontWeight(.bold)
                            .frame(width: 250, height: 60)
                            .foregroundColor(selectedColorBack)
                            .background(selectedColorFont)
                            .cornerRadius(10)
                            .padding()
                    }
                    Spacer()
                    
                }
            }
            .foregroundColor(selectedColorFont)
            .font(.custom("Inter-Bold", size: 30))
            
        }
    }
}
    
    struct ButtonSwwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            ButtonjoueurSwiftUIView(stepTwoSetting: .constant(false), selectedType: .constant(""), selectedColorFont: .constant(.yellow), selectedColorBack: .constant(.blue))
        }
    }

