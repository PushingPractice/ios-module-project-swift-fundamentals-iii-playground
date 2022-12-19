//
//  CurrencyFile.swift
//  CurrencyConverter
//
//  Created by Diante Lewis-Jolley on 12/18/22.
//

import Foundation

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.37
let usToMxn: Double = 0.051

var currrency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    var convertedAnswer: Double = 0
    if currrency == .cad {
      convertedAnswer =  dollars * usToCad
    } else {
        convertedAnswer = dollars * usToMxn
    }
    return convertedAnswer
}

func convert(amountString: String) -> String?  {
    guard let amount = Double(amountString) else {
         return nil
        }
    let convertedAmount = convert(amount)
    
    return String(convertedAmount)
}







