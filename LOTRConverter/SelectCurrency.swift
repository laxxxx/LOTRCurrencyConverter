//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 11/07/25.
//

import SwiftUI

struct SelectCurrency: View {
    var body: some View {
        
        @Environment(\.dismiss) var dismiss
        
        ZStack {
            //Parchment Background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                //Text
                Text("Select the currency you are starting with :")
                    .fontWeight(.bold)
                
                //currency Icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyIcon: currency.currencyImage, currencyName: currency.name)
                    }
                }
                
                //Text
                Text("Select the currency you would like to convert to :")
                    .fontWeight(.bold)
                
                //Images
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyIcon: currency.currencyImage, currencyName: currency.name)
                    }
                }
                //done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
        .background(Color.brown)
    }
}

#Preview {
    SelectCurrency()
}
