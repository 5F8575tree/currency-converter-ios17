//
//  SelectCurrencyView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var closeInfoView
    @Binding var convertingFrom: Currency
    @Binding var convertingTo: Currency
    
    var body: some View {
        ZStack {
            Image("bg-dark-purple")
                .resizable()
                .ignoresSafeArea()
                .padding(-32)
                .frame(height:950)
            
            VStack {
                Text("Select currency to exchange")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding([.bottom], 32)
                
                ExchangingGridView(selectedCurrency: $convertingFrom)
                
                Text("Select currency to convert to")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding([.bottom], 32)
                
                ExchangingGridView(selectedCurrency: $convertingTo)
             
                Button("Return") {
                    closeInfoView()
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .font(.title3)
                .padding([.top], 8)
            }
            .padding([.top], 32)
        }
    }
}

#Preview {
    SelectCurrencyView(convertingFrom: .constant(.gbp), convertingTo: .constant(.usd))
}
