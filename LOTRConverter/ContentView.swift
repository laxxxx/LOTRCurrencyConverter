//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 09/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                        .padding(.bottom, -5)
                        
                        //Textfield
                        TextField("Enter amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
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
                        .padding(.bottom, -5)
                        
                        //Textfield
                        TextField("Enter amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                // Info button
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchnageInfo()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
