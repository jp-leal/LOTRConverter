//
//  Currency.swift
//  LOTRConverter
//
//  Created by Joao Leal on 8/23/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Select the currency you are starting with")
                    .fontWeight(.bold)
                CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
                
                Text("Select the currency you are starting with")
                    .fontWeight(.bold)
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title)
                .padding()
                .foregroundStyle(.white)
            }
            
            .multilineTextAlignment(.center)
            .padding()
        }
      
    }
}

#Preview {
    SelectCurrency()
}
