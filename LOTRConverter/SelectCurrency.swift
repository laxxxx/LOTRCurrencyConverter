//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 11/07/25.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
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
                IconGrid(selectedCurrency: $topCurrency)
                
                //Text
                Text("Select the currency you would like to convert to :")
                    .fontWeight(.bold)
                    .padding(.top)
                
                //Images
                IconGrid(selectedCurrency: $bottomCurrency)
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
            .foregroundStyle(.black)
        }
        .background(Color.brown)
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .goldPenny
    @Previewable @State var bottomCurrency: Currency = .silverPenny
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
