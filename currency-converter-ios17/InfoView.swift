//
//  InfoView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var closeInfoView
    
    var body: some View {
        ZStack {
            Image("bg-dark-purple")
                .resizable()
                .ignoresSafeArea()
                .padding(-32)
                .frame(height: 900)
            
            VStack {
                // page title
                Text("Exchange Rates")
                    .foregroundStyle(.white)
                    .font(.title)
                // paragraph
                Text("These exchange rates are drawn from those provided by the Xe.com exchange rate provider and are accurate as to the reasonable knowledge of that website. We round up the total's so that you can more easily grasp the differing monetary values.")
                    .foregroundStyle(.white)
                    .padding(10)
                    .padding([.bottom], 96)
                // 2 exchange rates
                
                ExchangeRate(leftIcon: "yensign.circle.fill", rightIcon: "dollarsign.circle.fill", leftText: "Japanese Yen", rightText: "US Dollars", leftValue: "10,000 JPY", rightValue: "140 USD")
                
                ExchangeRate(leftIcon: "dollarsign.circle.fill", rightIcon: "yensign.circle.fill", leftText: "US Dollars", rightText: "Japanese Yen", leftValue: "100 USD", rightValue: "7,400 JPY")
                
                // return btn
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
    InfoView()
}
