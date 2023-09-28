//
//  RowGame.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI

struct RowGame: View {
    var color: Color
    var filledImage:String
    var emptyImage:String
    
    var textName:String
    @State private var pressed : Bool = false
    @Binding var multilineTextAlignement :  TextAlignment
    @Binding var typeButton: String
    @Binding var selectedColorFont: Color
    
    var body: some View {
        VStack {
            Button {
                pressed = !pressed
                typeButton = textName
                print(textName)
                
            }label: {
                Image(pressed ? filledImage: emptyImage)
            }
            Text(textName)
                .font(.title3)
                .foregroundColor(selectedColorFont)
                .multilineTextAlignment(multilineTextAlignement)
                .bold()
        
        .frame(width: 150)
        }
    }
}

struct RowGame_Previews: PreviewProvider {
static var previews: some View {
    RowGame(color: Color.blue, filledImage: "D-Ambiance-ON-big", emptyImage: "D-Ambiance-OFF-big", textName: "Prismi", multilineTextAlignement: .constant(.leading), typeButton: .constant(""), selectedColorFont: .constant(.yellow))
}
}
