//
//  ContentView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct ContentView: View {
    @State var showInfoView = false
    @State var yenValue = ""
    @State var dollarValue = ""
    
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
                    .font(.title)
                    .foregroundStyle(.white)
                // conversion section
                HStack {
                    // left conversions sect
                    VStack {
                        // currency
                        HStack {
                            // curency text
                            Text("Japanese Yen")
                                .foregroundStyle(.white)
                            
                            // currency img
                            Image(systemName: "yensign.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                                .foregroundStyle(.white)
                        }
                        // text field
                        TextField("Enter Yen", text: $yenValue)
                            .textFieldStyle(.roundedBorder)
                    }
                    // equal sign
                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(height:8)
                        .padding([.leading, .trailing])
                        .foregroundStyle(.white)
                    // right conversion sec
                    VStack {
                        // currency
                        HStack {
                            // currency text
                            // curency img
                            Image(systemName: "dollarsign.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                                .foregroundStyle(.white)
                            
                            Text("US Dollars")
                                .foregroundStyle(.white)
                            
                        }
                        // text field
                        TextField("Enter Dollars", text: $dollarValue)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding([.top, .bottom], 32)
                .padding(.horizontal, 12)
                .background(.black.opacity(0.25))
                Spacer()
                Spacer()
                // info button
                HStack {
                    Spacer()
                    Button {
                        // logic part
                        showInfoView.toggle()
                    } label: {
                        // design part
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                    }
                }
            }
//            .border(.yellow)
            .padding(66)
            .padding([.bottom], 24)
        }
        .sheet(isPresented: $showInfoView) {
            InfoView()
        }
    }
}

#Preview {
    ContentView()
}
