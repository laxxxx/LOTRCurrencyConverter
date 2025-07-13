//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Sree Lakshman on 13/07/25.
//

import TipKit

struct CurrencyTip: Tip {
    var title: Text = Text("Change currency")
    
    var message: Text? = Text("You can tap the left and right currency to bring up the select currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
