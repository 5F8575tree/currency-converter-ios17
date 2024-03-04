//
//  ContentView.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/01.
//

import SwiftUI

struct ContentView: View {
    @State var showInfoView = false
    @State var showSelectCurrency = false
    @State var convertingFrom: Currency = .jpy
    @State var convertingTo: Currency = .usd
    @State var convertFromValue = ""
    @State var convertToValue = ""
    
    var body: some View {
        ZStack {

            Image("bg-dark-purple")
                .resizable()
                .ignoresSafeArea()
                .frame(height:950)
                .frame(width:500)
            
            VStack {
                Spacer()

                Image("currency-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)

                Text("How much is this?")
                    .font(.title)
                    .foregroundStyle(.white)

                HStack {
                    VStack {
                        HStack {
                            
                            Text(convertingFrom.name)
                                .foregroundStyle(.white)
                            
                            Image(systemName: convertingFrom.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                                .foregroundStyle(.white)
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                    
                        TextField("Enter \(convertingFrom.name)", text: $convertFromValue)
                            .textFieldStyle(.roundedBorder)
                    }

                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(height:8)
                        .padding([.leading, .trailing])
                        .foregroundStyle(.white)
                    
                    VStack {
                        HStack {
                            Image(systemName: convertingTo.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                                .foregroundStyle(.white)
                            
                            Text(convertingTo.name)
                                .foregroundStyle(.white)
                            
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        TextField("Enter \(convertingTo.name)", text: $convertToValue)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding([.top, .bottom], 32)
                .padding(.horizontal, 12)
                .background(.black.opacity(0.25))
                Spacer()
                Spacer()

                HStack {
                    Spacer()
                    Button {
                        showInfoView.toggle()
                    } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                    }
                }
            }
            .padding(66)
            .padding([.bottom], 24)
        }
        .sheet(isPresented: $showInfoView) {
            InfoView()
        }
        .sheet(isPresented: $showSelectCurrency) {
            SelectCurrencyView(convertingFrom: $convertingFrom, convertingTo: $convertingTo)
        }
    }
}

#Preview {
    ContentView()
}
