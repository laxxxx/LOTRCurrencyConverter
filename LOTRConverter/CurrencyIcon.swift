//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 11/07/25.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currencyIcon: ImageResource
    let currencyName: String
    
    var body: some View {
        
        //Images
        ZStack(alignment: .bottom) {
            //currency Image
            Image(currencyIcon)
                .resizable()
                .scaledToFit()
            
            //currency name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyIcon: .copperpenny, currencyName: "Copper Penny")
}
