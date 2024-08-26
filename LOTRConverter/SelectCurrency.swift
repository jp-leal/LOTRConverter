//
//  Currency.swift
//  LOTRConverter
//
//  Created by Joao Leal on 8/23/24.
//

import SwiftUI

struct SelectCurrency: View {
    @State var selectedCurrency: Currency
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Select the currency you are starting with:\(Currency.silverPenny.rawValue)")
                    .fontWeight(.bold)
                
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                    
                    ForEach(Currency.allCases){ item in
                        if selectedCurrency == item {
                            CurrencyIcon(currencyImage: item.image, currencyName: item.name)
                                .shadow(color: .black, radius: 10)
                            
                                .overlay {
                                    RoundedRectangle (cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        } else {
                            CurrencyIcon(currencyImage: item.image, currencyName: item.name)
                                .onTapGesture {
                                    selectedCurrency = item
                                }
                        }
                   }
                
                }
                          
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
    SelectCurrency(selectedCurrency: .silvePiece)
}
