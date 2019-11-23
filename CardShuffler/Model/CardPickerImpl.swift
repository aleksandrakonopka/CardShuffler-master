//
//  Model.swift
//  CardShuffler
//
//  Created by Aleksandra on 23/11/2019.
//  Copyright © 2019 Karol. All rights reserved.
//

import Foundation

//TODO MAKE MODEL RESPONSIBLE FOR SHUFFLE, STORE ALL CARD TAIL, 5 CHOSEN CARDS WITH IMAGES OF THEM
protocol CardPicker{
    var picked5Cards : [String]{get}
    func get5Cards()
}
class CardPickerImpl : CardPicker{
    enum CardName : String{
        case C2 = "2C"
        case D2 = "2D"
        case H2 = "2H"
        case S2 = "2S"
        
        case C3 = "3C"
        case D3 = "3D"
        case H3 = "3H"
        case S3 = "3S"
        
        case C4 = "4C"
        case D4 = "4D"
        case H4 = "4H"
        case S4 = "4S"
        
        case C5 = "5C"
        case D5 = "5D"
        case H5 = "5H"
        case S5 = "5S"
        
        case C6 = "6C"
        case D6 = "6D"
        case H6 = "6H"
        case S6 = "6S"
        
        case C7 = "7C"
        case D7 = "7D"
        case H7 = "7H"
        case S7 = "7S"
        
        case C8 = "8C"
        case D8 = "8D"
        case H8 = "8H"
        case S8 = "8S"
        
        case C9 = "9C"
        case D9 = "9D"
        case H9 = "9H"
        case S9 = "9S"
        
        case C10 = "10C"
        case D10 = "10D"
        case H10 = "10H"
        case S10 = "10S"
        
        case CA = "AC"
        case DA = "AD"
        case HA = "AH"
        case SA = "AS"
        
        case CJ = "JC"
        case DJ = "JD"
        case HJ = "JH"
        case SJ = "JS"
        
        case CK = "KC"
        case DK = "KD"
        case HK = "KH"
        case SK = "KS"
        
        case CQ = "QC"
        case DQ = "QD"
        case HQ = "QH"
        case SQ = "QS"
    }
    var picked5Cards: [String] = []
    var cards = [CardName.C2,CardName.D2,CardName.H2,CardName.S2,CardName.C3,CardName.D3,CardName.H3,CardName.S3,CardName.C4,CardName.D4,CardName.H4,CardName.S4,CardName.C5,CardName.D5,CardName.H5,CardName.S5,CardName.C6,CardName.D6,CardName.H6,CardName.S6,CardName.C7,CardName.D7,CardName.H7,CardName.S7,CardName.C8,CardName.D8,CardName.H8,CardName.S8,CardName.C9,CardName.D9,CardName.H9,CardName.S9,CardName.C10,CardName.D10,CardName.H10,CardName.S10,CardName.CA,CardName.DA,CardName.HA,CardName.SA,CardName.CJ,CardName.DJ,CardName.HJ,CardName.SJ,CardName.CK,CardName.DK,CardName.HK,CardName.SK,CardName.CQ,CardName.DQ,CardName.HQ,CardName.SQ]
    
    func get5Cards() {
        picked5Cards.removeAll()
        while picked5Cards.count < 5{
            let newcard = cards.randomElement()
            if !picked5Cards.contains(where: { $0 == newcard?.rawValue
            }){
                picked5Cards.append(newcard!.rawValue)
            }
        }
    }
    
    
}
