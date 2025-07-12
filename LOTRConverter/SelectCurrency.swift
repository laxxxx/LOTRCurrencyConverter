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
                
                
                CurrencyIcon(currencyIcon: .copperpenny, currencyName: "Copper Penny")
                
                //Text
                Text("Select the currency you would like to convert to :")
                    .fontWeight(.bold)
                
                //Images
                
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
