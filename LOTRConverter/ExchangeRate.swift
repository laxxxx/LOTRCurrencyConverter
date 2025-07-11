//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 11/07/25.
//

import SwiftUI

struct ExchangeRate: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            //Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Text
            Text(text)
            
            //Image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece,
                 text: "1 Gold Piece = 4 Gold Pennies",
                 rightImage: .goldpenny)
}
