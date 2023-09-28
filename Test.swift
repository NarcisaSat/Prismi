//
//  Test.swift
//  Prismi
//
//  Created by Apprenant77 on 26/09/2023.
//

import SwiftUI

struct Test: View {
    @State private var reco: [jeu] = [hanabi]
    var body: some View {
        VStack {
            ForEach(reco, id:\.self) { item in
                Image(item.image[0])
                VStack {
                    Text(item.description)
                }
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
