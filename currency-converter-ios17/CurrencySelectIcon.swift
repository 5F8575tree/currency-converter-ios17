//
//  CurrencySelectIcon.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct CurrencySelectIcon: View {
    let icon: String
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 87)
            
            Text(currencyName)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding([.all], 1)
                .font(.caption)
                .background(.black.opacity(0.75))
        }
        .padding([.all], 8)
        .frame(width: 100, height: 100)
        .background(.black.opacity(0.75))
        .clipShape(.rect(cornerRadius:6))
    }
}

#Preview {
    CurrencySelectIcon(icon: "yensign.circle.fill", currencyName: "Japanese Yen")
}
