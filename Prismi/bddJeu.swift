//
//  bddJeu.swift
//  Prismi
//
//  Created by Apprenant78 on 19/09/2023.
//

import SwiftUI

struct jeu: Identifiable, Hashable {
    
    var id = UUID()
    
    var name :String
    var description:String
    var price:String
    var image:[String]
    var nbPlayer:String
    var time:String
    var difficulty:[Difficulty]
    var type:[Types]
    var bookmark: Bool = false
    var accessibility:[Access]
    
}
// Instantation des strings.


enum Types: String {
    case Coopération = "Coopération", Aventure = "Aventure", Gestion = "Gestion", Ambiance = "Ambiance", JeuDeCarte = "Jeu de cartes", Memoire = "Mémoire", Strategie = "Stratégie", JeuDeDes = "Jeu de dés", Enquete = "Enquête"
}

enum Access: String {
    case Tous = "Tous", Deuteranopie = "Deutéranopie", Tritanopie = "Tritanopie"
}

enum Difficulty: String {
    case Débutant = "Débutant", Intermediaire = "Intermédiaire", Expert = "Expert"
}

// Hanabi
var hanabi = jeu(name: "Hanabi",
                 description: "Jouez à Hanabi et incarnez des artificiers en charge d'un spectacle féerique. Coopérez et tirez le plus beau des feux d'artifice.",
                 price: "€",
                 image: ["hanabicarte","hanabi"],
                 nbPlayer: "2 à 5 joueurs",
                 time: "Moins de 30 min",
                 difficulty: [.Débutant],
                 type: [.Coopération],
                 bookmark: true,
                 accessibility: [.Tous]
                 
)

// Les aventuriers du rail



var jeuaventuriersdurail = jeu(name: "Les aventuriers du rail europe",
                               description: "Dans Les Aventuriers du Rail Europe, partez à l'assaut du réseau ferroviaire européen. Des remparts d'Edimbourg aux docks de Constantinople, des ruelles poussiéreuses de Pampelune aux quais gelés de la grande gare de Saint-Pétersbourg, ce 2ème volume vous emmène à la découverte de l'Europe des années 1900. Un joueur prend le contrôle d'une ligne en utilisant des cartes de la même couleur que la voie. Une fois contrôlée, la ligne appartient au joueur et plus aucun participant ne peut en prendre le contrôle.Tout comme son prédécesseur, ce nouveau volume a été élu jeu de l’année dans de nombreux pays lors de sa sortie. Ce succès repose sur les mêmes bases que le premier volet. Le jeu reste simple, élégant et facile à apprendre. ",
                               
                               price: "€€",
                               image: ["Les Aventuriers du rail","aventuriersduraileuropeles-contenant"],
                               nbPlayer: ("2 à 5"),
                               time : "1 à 2h",
                               difficulty: [.Débutant],
                               type: [.Aventure],
                               bookmark: true,
                               accessibility : [.Tous]
)
// Sherlock


var sherlock = jeu(name:"Sherlock Holmes: Les meurtres de la Tamise & autres enquêtes",
                   description: "Un jeu coopératif dans lequel vous enquêtez sur les mêmes affaires que le plus fameux des détectives.Suivez les pistes, recueillez les indices et tentez de rivaliser avec Sherlock Holmes en résolvant les enquêtes à votre façon.10 cas inédits dans une seule boîte : Sherlock Homes contre Jack l’Éventreur (4 enquêtes en mode campagne) et Aventures à WestEnd (6 enquêtes inédites en français).10 nouvelles enquêtes policières à résoudre...",
                   price: "€€",
                   image: ["Sherlockk","sherlockholmes-contenant"],
                   nbPlayer: "1 à 8 joueurs",
                   time: "environ 90 min",
                   difficulty: [.Expert],
                   type: [.Enquete],
                   bookmark: true,
                   accessibility: [.Deuteranopie,.Tritanopie,.Tous]
                   
)

// Age de pierre

var agedepierre = jeu(name: "L'Age de pierre",
                      description:"À l'aube des civilisations, nos ancêtres travaillèrent sans relâche afin de survivre ne serait-ce qu'une journée. Mais le génie de l'homme avait déjà permis de faciliter leur vie. L'Âge de Pierre lance les joueurs dans cette époque rude et sans pitié. À l'aide d'outils, au départ rudimentaires, vous pourrez récolter bois, pierre et or. Ces ressources vous seront fort utiles dans vos négociations avec les villages voisins. Et surtout, n'oubliez pas de nourrir votre peuple à chaque tour. Vous devrez vous dépasser et vous débrouiller, tout comme vos ancêtres, afin d'atteindre la victoire ! L'Âge de Pierre, une passionnante aventure dans le passé !",
                      price: "€€",
                      image: ["agedepierreboite","agedepierre-contenant"],
                      nbPlayer: "2 à 4 joueurs",
                      time:"75min",
                      difficulty:[.Intermediaire],
                      type:[.Gestion],
                      bookmark: false,
                      accessibility:[.Deuteranopie,.Tritanopie,.Tous]
)



// Sagrada

var sagrada = jeu (
    name: "Sagrada",
    description:"À l'aube des civilisations, nos ancêtres travaillèrent sans relâche afin de survivre ne serait-ce qu'une journée. Mais le génie de l'homme avait déjà permis de faciliter leur vie. L'Âge de Pierre lance les joueurs dans cette époque rude et sans pitié. À l'aide d'outils, au départ rudimentaires, vous pourrez récolter bois, pierre et or. Ces ressources vous seront fort utiles dans vos négociations avec les villages voisins. Et surtout, n'oubliez pas de nourrir votre peuple à chaque tour. Vous devrez vous dépasser et vous débrouiller, tout comme vos ancêtres, afin d'atteindre la victoire ! L'Âge de Pierre, une passionnante aventure dans le passé !",
    price: "€€",
    image: ["sagrada1","sagrada2"],
    nbPlayer: "1 à 4 joueurs",
    time:"<1h",
    difficulty:[.Intermediaire],
    type:[.JeuDeDes,.Strategie],
    bookmark: false,
    accessibility:[.Tous]
)


// Dodble

var dobble = jeu (
    name: "Dobble Classique",
    description: "Dans chaque paire de cartes de Dobble, il y a toujours un dessin un commun. Soyez le plus rapide à le repérer pour gagner la partie. Dans chaque paire de cartes de Dobble, il y a toujours un dessin un commun.",
    price: "€",
    image: ["dobbleclassique","dobbleclassiqueboite"],
    nbPlayer: "2 à 8 joueurs",
    time: "< 30 min",
    difficulty: [.Débutant],
    type: [.Ambiance,.JeuDeCarte],
    bookmark: false,
    accessibility: [.Deuteranopie,.Tritanopie,.Tous]
    
)

// Code name XXL

var codeNameXxl = jeu(name: "Codenames XXL",
                      description:"Dans Codenames XXL, entrez dans le monde de l'espionnage et de la déduction. Deux équipes s'affrontent pour identifier leurs agents secrets parmi une grille de mots mystérieux. Les maîtres-espions donnent des indices ingénieux pour guider leurs coéquipiers, mais attention à ne pas désigner les assassins ennemis ! Codenames XXL offre une expérience de jeu immersive avec des cartes en grand format pour une meilleure visibilité. Un jeu de mots et de stratégie passionnant qui mettra à l'épreuve vos compétences en communication et en déduction. Saurez-vous mener votre équipe à la victoire en déchiffrant les indices et en évitant les pièges ? Un jeu primé qui promet des heures de divertissement captivant.",
                      price: "€€€",
                      image: ["codenames0","codenames1"],
                      nbPlayer: "2 à 8 joueurs",
                      time:"<1h",
                      difficulty:[.Intermediaire],
                      type:[.JeuDeDes,.Coopération,.Enquete,.Strategie],
                      bookmark: false,
                      accessibility:[.Tritanopie,.Tous]
)


// Monopoly

var monopoly = jeu (
    name: "Monopoly",
    description: " Le Monopoly est jeu de plateau, il faut acheter, vendre et échanger des propriétés pour gagner. Les cartes Chance et Caisse de communauté peuvent modifier la partie : un joueur peut s'enrichir ou être envoyé en prison. C'est le jeu parfait pour les soirées de jeux en famille.",
    price: "€€",
    image: ["monopolyboite","monopoly-contenant"],
    nbPlayer: "2 à 6 joueurs",
    time: "1 à 2 heures",
    difficulty: [.Intermediaire],
    type: [.Ambiance,.Strategie],
    bookmark: false,
    accessibility: [.Tritanopie,.Tous]
    
)
