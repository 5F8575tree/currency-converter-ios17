//
//  ContentView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                // bg img
            Image("bg-dark-purple")
                .resizable()
                .ignoresSafeArea()
                .frame(height:950)
                .frame(width:500)
            
            VStack {
                Spacer()
                // prancing pony img
                Image("currency-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                // currency exchange text
                Text("How much is this?")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                // conversion section
                HStack {
                    // left conversions sect
                    VStack {
                        // currency
                        HStack {
                            // currency img
                            Image(systemName: "yensign.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 24)
                                .foregroundStyle(.white)
                            
                            // curency text
                            Text("Japanese Yen")
                                .foregroundStyle(.white)
                        }
                        // text field
                        Text("text field")
                    }
                    // equal sign
                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(height:12)
                        .padding([.leading, .trailing])
                        .foregroundStyle(.white)
                    // right conversion sec
                    VStack {
                        // currency
                        HStack {
                            // currency text
                            Text("US Dollars")
                                .foregroundStyle(.white)
                            // curency img
                            Image(systemName: "dollarsign.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 24)
                                .foregroundStyle(.white)
                        }
                        // text field
                        Text("text field")
                    }
                }
                Spacer()
                Spacer()
                // info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding(.bottom, 100)
            }
//            .border(.yellow)
        }
    }
}

#Preview {
    ContentView()
}
