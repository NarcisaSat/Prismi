import SwiftUI

struct Reglages: View {
    @State private var myBackColor: Color = Color("Colorblue")
    @State private var myTextColor: Color = Color("Coloryellow")
    @State private var myButtonTextColor: Color = Color("Colorblue")
    @State private var buttonison = false
    @State private var numberOfPlayers: Double = 1
    @State private var isImageOn = false
    @State private var textAlignment: TextAlignment = .center
    @Binding var dismissModal: Bool
    
    var body: some View {
        ZStack {
            
            myBackColor
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                
                HStack {
                    Spacer()
                Text ("Type de daltonisme")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(.vertical)
                    Spacer()
                }
                VStack(alignment: .leading,spacing: 10.0){
                    HStack {
                        
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            Image(systemName: "eye")
                                .font(.system(size: 20))
                            
                            Text("Deutéranopie")
                                .font(.system(size: 20))
                        }
                    }
                    
                    HStack {
                        Button {
                            myBackColor = Color("Colorbluet")
                            myTextColor =  Color("Colorgreent")
                            myButtonTextColor = Color("Colorbluet")
                        } label: {
                            Image(systemName: "eye")
                                .font(.system(size: 20))
                            
                            Text("Tritanopie")
                                .font(.system(size: 20))
                        }
                    }
                    
                    HStack {
                        Button {
                            myBackColor = Color("Colorblue")
                            myTextColor =  Color("Coloryellow")
                            myButtonTextColor = Color("Colorblue")
                        } label: {
                            Image(systemName: "eye.fill")
                                .font(.system(size: 20))
                            
                            Text("Je ne sais pas")
                                .font(.system(size: 20))
                        }
                    }
                }
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                    Text("Nombre de joueurs") // Titre
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.vertical)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Button("-") {
                            if numberOfPlayers > 1 {
                                numberOfPlayers -= 1
                            }
                        }
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        Spacer()
                        Text("\(Int(numberOfPlayers))")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                        Spacer()
                        Button("+") {
                            if numberOfPlayers < 9 {
                                numberOfPlayers += 1
                            }
                        }
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.vertical)
                    
                    Text("Type de jeu") // Centrer horizontalement le texte "Type de jeu"
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .center) // Centrer horizontalement
                }

                
                VStack(alignment: .center){
                    HStack(spacing: 20) {
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            
                            Rowgame(color:Color( "Coloryellowd"), filledImage: "D-Stratégie-ON-small", emptyImage: "D-Stratégie-OFF-small", textName:"Stratégie", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
//                            Spacer()
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            Rowgame(color: Color("Coloryellowd"), filledImage: "D-Jeux-de-des-ON-small", emptyImage: "D-Jeux-de-des-OFF-small", textName:"Jeu de dés", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
//                            Spacer()
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            Rowgame(color: Color("Coloryellowd"), filledImage: "D-Ambiance-ON-small", emptyImage: "D-Ambiance-OFF-small", textName:"Ambiance", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
                    }
                    
                    HStack(spacing: 20) {
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            
                            Rowgame(color:Color( "Coloryellowd"), filledImage: "VN-Memoire-ON-small", emptyImage: "VN-Memoire-OFF-small", textName:"Mémoire", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
//                            Spacer()
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            Rowgame(color: Color("Coloryellowd"), filledImage: "VN-Gestion-ON-small", emptyImage: "VN-Gestion-OFF-small", textName:"Gestion", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
//                            Spacer()
                        Button {
                            myBackColor = Color("Colorblued")
                            myTextColor =  Color("Coloryellowd")
                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            Rowgame(color: Color("Coloryellowd"), filledImage: "VN-Cartes-ON-small", emptyImage: "VN-Cartes-OFF-small", textName:"Cartes", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
                    }
                    
                    HStack(spacing: 20) {
                        Button {
//                            myBackColor = Color("Colorblued")
//                            myTextColor =  Color("Coloryellowd")
//                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            
                            Rowgame(color:Color( "Coloryellowd"), filledImage: "VN-Enquete-ON-small", emptyImage: "VN-Enquete-OFF-small", textName:"Enquête", alignementleading:
                                        $textAlignment)
                        }
                        .frame(width: 100)
                        
//                        Spacer()
                        Button {
//                            myBackColor = Color("Colorblued")
//                            myTextColor =  Color("Coloryellowd")
//                            myButtonTextColor = Color("Colorblued")
                        } label: {
                            Rowgame(color: Color("Coloryellowd"), filledImage: "VN-Cooperation-ON-small", emptyImage: "VN-Cooperation-OFF-small", textName:"Coopération", alignementleading:
                                        $textAlignment)
                        }
//                        .frame(width: 100)
//                        Spacer()
//                        Button {
////                            myBackColor = Color("Colorblued")
////                            myTextColor =  Color("Coloryellowd")
////                            myButtonTextColor = Color("Colorblued")
//                        } label: {
//                            Rowgame(color: Color("Coloryellowd"), filledImage: "D-Ambiance-OFF-small", emptyImage: "D-Ambiance-ON-small", textName:"Ambiance", alignementleading:
//                                        $textAlignment)
//                        }
//                        .frame(width: 100)
                    }
                    
                    
                    Button {
                        dismissModal.toggle()
                    } label: {
                        
                        Text("Appliquer")
                            .foregroundColor(myButtonTextColor)
                            .fontWeight(.bold)
                            .frame(width: 250, height: 60)
                            .background(myTextColor)
                            .cornerRadius(10)
                            .padding(35)
                    }
                }
                
                HStack {
                    
                    Spacer()
                }
            }
            .padding(30)
        }
        .foregroundColor(myTextColor)
        .foregroundColor(myButtonTextColor)
    }
}


struct Rowgame: View {
    
    var color: Color
    var filledImage:String
    var emptyImage:String
    
    var textName:String
    @State private var pressed : Bool = false
    @Binding var alignementleading :  TextAlignment
    
    var body: some View {
        VStack {
            Button {
                pressed = !pressed
                
            }label: {
                Image(pressed ? filledImage: emptyImage)
            }
            Text(textName)
                .font(.system(size: 20))
                .foregroundColor(color)
                .multilineTextAlignment(alignementleading)
                .bold()
        }
    }
}

struct Reglage_Previews: PreviewProvider {
    static var previews: some View {
        Reglages(dismissModal: .constant(false))
    }
}


