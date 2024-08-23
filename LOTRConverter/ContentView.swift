//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Joao Leal on 8/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rightAmount: String = "fff"
    @State private var leftAmount: String = "fff"
    @State private var showingExchangeInfo = false
    
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
                .opacity(0.9)
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    
                Text("Currency Exchange")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                HStack{
                    VStack{
                        HStack{
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        TextField("Right", text: $rightAmount)
                        
                            .textFieldStyle(.roundedBorder)
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack{
                        HStack{
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        TextField("Crre", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                }
                Spacer()
                HStack{
                    Spacer()
                    Button {
                        showingExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showingExchangeInfo) {
                        ExchangeInfo()
                    }
                }
                
                

                
            }
            
            
        }

    }
  
}

#Preview {
    ContentView()
}
