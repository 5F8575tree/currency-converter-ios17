//
//  IconGrid.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/04.
//

import SwiftUI

struct ConvertingGridView: View {
    @State var convertingCurrency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if currency == convertingCurrency {
                CurrencySelectIcon(icon: currency.icon, currencyName: currency.name)
                    .shadow(color: .white, radius: 8)
                    .border(.gray)
                } else {
                    CurrencySelectIcon(icon: currency.icon, currencyName: currency.name)
                        .shadow(color: .black, radius: 8)
                        .onTapGesture {
                            convertingCurrency = currency
                        }
                }
            }
        }
    }
}
