//
//  SelectCurrencyView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var closeInfoView
    
    var body: some View {
        ZStack {
            Image("bg-dark-purple")
                .resizable()
                .ignoresSafeArea()
                .padding(-32)
                .frame(height:950)
            
            VStack {
                Text("Select currency to exchange")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding([.bottom], 32)
                
                HStack {
                    CurrencySelectIcon(icon: "yensign.circle.fill", currencyName: "Japanese Yen")
                    CurrencySelectIcon(icon: "dollarsign.circle.fill", currencyName: "US Dollar")
                    CurrencySelectIcon(icon: "sterlingsign.circle.fill", currencyName: "British Pound")
                }
                .padding([.bottom], 54)
                
                Text("Select currency to convert to")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding([.bottom], 32)
                
                HStack {
                    CurrencySelectIcon(icon: "yensign.circle.fill", currencyName: "Japanese Yen")
                    CurrencySelectIcon(icon: "dollarsign.circle.fill", currencyName: "US Dollar")
                    CurrencySelectIcon(icon: "sterlingsign.circle.fill", currencyName: "British Pound")
                }
             
                Button("Return") {
                    closeInfoView()
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .font(.title3)
                .padding([.top], 72)
            }
        }
    }
}

#Preview {
    SelectCurrencyView()
}


