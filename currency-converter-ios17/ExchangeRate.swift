//
//  InfoRateView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct ExchangeRate: View {
    let leftIcon: String
    let rightIcon: String
    let leftText: String
    let rightText: String
    let leftValue: String
    let rightValue: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: leftIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .foregroundColor(.white)

                Spacer()
                Text(leftText)
                    .foregroundStyle(.white)
                Spacer()
                
                Text(rightText)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: rightIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .foregroundStyle(.white)
            }
            .padding([.horizontal], 32)
            .padding([.top])
            
            HStack {
                Spacer()
                Text(leftValue)
                    .foregroundStyle(.white)
                    .font(.title2)
                Spacer()
                Text("equals")
                    .foregroundStyle(.white)
                Spacer()
                Text(rightValue)
                    .foregroundStyle(.white)
                    .font(.title2)
                Spacer()
            }
            .padding(24)
        }
    }
}

#Preview {
    ExchangeRate(leftIcon: "yensign.circle.fill", rightIcon: "dollarsign.circle.fill", leftText: "Japanese Yen", rightText: "US Dollars", leftValue: "10,000 JPY", rightValue: "100 USD")
}
