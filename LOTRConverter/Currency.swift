//
//  Currency.swift
//  LOTRConverter
//
//  Created by Joao Leal on 8/23/24.
//

import Foundation
import SwiftUI

enum Currency: Double, CaseIterable, Identifiable{
    case copperPenny = 6400
    case silverPenny = 64
    case silvePiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id: Currency{self}
    
    var image: ImageResource{
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silvePiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        }}
    
    var name: String{
        switch self {
        case .copperPenny:
                "Copper Penny"
        case .silverPenny:
            "Sillver Penny"
        case .silvePiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }}
}
