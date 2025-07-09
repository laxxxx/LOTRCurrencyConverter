//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 09/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    
                
                // conversion section
                
                HStack {
                    //left conversion
                    VStack {
                        //Currency
                        HStack {
                            //currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        
                        //Textfield
                        Text("Textfield")
                        
                    }
                    
                    //equals
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    
                    //right conversion
                    VStack {
                        //Currency
                        HStack {
                            //currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
                        
                        //Textfield
                        Text("Textfield")
                    }
                    
                    
                }
                
                Spacer()
                
                // Info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
