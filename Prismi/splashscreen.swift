//
//  splashscreen.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI

struct splashscreen: View {
    
    var body: some View {

        ZStack {
            Color ("Colorgreyt")
                .ignoresSafeArea()
            VStack {

                Image("logo")
                    .padding(.bottom, 10)

                Text ("Prismi")
                    .foregroundColor(Color("Colorbluet"))
                    .padding(.bottom, 30)
                    .font(Font.custom("Inter-Bold",size: 35))


                Text ("Une autre façon de voir le jeu !")
                    .foregroundColor(Color("Colorbluet"))
                    .padding(.top)
                    .font(Font.custom("Inter-Medium",size: 22))
                    .multilineTextAlignment(.center)
            }


        }
    }
}
struct splashscreen_Previews: PreviewProvider {
    static var previews: some View {
        splashscreen()
    }
}
