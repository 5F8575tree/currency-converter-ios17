//
//  ExchangingGridView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/04.
//

import SwiftUI

struct ExchangingGridView: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if currency == selectedCurrency {
                CurrencySelectIcon(icon: currency.icon, currencyName: currency.name)
                    .shadow(color: .white, radius: 8)
                    .border(.gray)
                } else {
                    CurrencySelectIcon(icon: currency.icon, currencyName: currency.name)
                        .shadow(color: .black, radius: 8)
                        .onTapGesture {
                            selectedCurrency = currency
                        }
                }
            }
        }
        .padding([.bottom], 54)
    }
}

#Preview {
    ExchangingGridView(selectedCurrency: .constant(.gbp))
}
