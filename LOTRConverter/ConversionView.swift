//
//  ConversionView.swift
//  LOTRConverter
//
//  Created by Joao Leal on 8/23/24.
//

import SwiftUI

struct ConversionView: View {
    var rightImage: ImageResource
    var information: String
    var leftImage: ImageResource
    var body: some View {
        HStack{
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text("1 gold penny = 4 gold pennies")
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}


#Preview {
    ConversionView(rightImage: .copperpenny, information: "dsadas", leftImage: .goldpenny)
}
