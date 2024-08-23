//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Joao Leal on 8/23/24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                Text("DesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciptionDesciption")
                    .font(.title2)
                    .padding()
                
                Text("Exchange rates")
                ConversionView(rightImage: .copperpenny, information: "1 copper penny = 2 gold pennies", leftImage: .goldpenny)
                ConversionView(rightImage: .copperpenny, information: "1 copper penny = 2 gold pennies", leftImage: .goldpenny)
                ConversionView(rightImage: .copperpenny, information: "1 copper penny = 2 gold pennies", leftImage: .goldpenny)
                ConversionView(rightImage: .copperpenny, information: "1 copper penny = 2 gold pennies", leftImage: .goldpenny)
                
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title)
                .padding()
                
            }
            .foregroundStyle(.black)
            
            
        }
    }
}

#Preview {
    ExchangeInfo()
}

