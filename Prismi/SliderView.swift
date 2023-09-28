//
//  SliderView.swift
//  Prismi
//
//  Created by apprenant68 on 20/09/2023.
//

import SwiftUI

struct SliderView: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common)
    let images = ["agedepierreboite", "agedepierre-contenant"]
        var body: some View {
        VStack {
            TabView {
                ForEach(0..<2){ i in
                    Image("\(images[i])")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 400)
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
