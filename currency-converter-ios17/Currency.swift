//
//  Currency.swift
//  currency-converter-ios17
//
//  Created by Mark J Rawlins on 2024/03/04.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case jpy = 100
    case usd = 4
    case gbp = 1
    case eur = 2
    
    var id: Double { rawValue }
    
    func convertValue(amountString: String, currency: Currency) -> String {
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        
        let convertedValue = (doubleAmount / self.rawValue) * currency.rawValue
        
        return String(format: "%.2f", convertedValue) // "200.00"
    }
    
    var icon: String {
        switch self {
        case .gbp:
            return "sterlingsign.circle.fill"
        case .jpy:
            return "yensign.circle.fill"
        case .usd:
            return "dollarsign.circle.fill"
        case .eur:
            return "eurosign.circle.fill"
        }
    }
    
    var name: String {
        switch self {
        case .eur:
            return "Euro Dollars"
        case .gbp:
            return "British Pound"
        case .jpy:
            return "Japanese Yen"
        case .usd:
            return "US Dollars"
        }
    }
}
