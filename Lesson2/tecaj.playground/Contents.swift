//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Money{
    var currency: String = ""
}




class MoneyConverter{
    func convert(var value: Float, startCurrency: Money, targetCurrency: Money) -> (convertedValue: Float, targetCurrency: Money) {
        if (startCurrency.currency == "EUR") && (targetCurrency.currency == "USD")  {
            value = value * 1.12
        }
        
        else if (startCurrency.currency == "USD") && (targetCurrency.currency == "EUR")  {
            value = value * 0.89
        }
        else {
            
        }
        
        return (value, targetCurrency)
    }
}

let dollar = Money()
dollar.currency = "USD"

let euro = Money()
euro.currency = "EUR"

let sit = Money()
sit.currency = "SIT"

let dollarToEuro = MoneyConverter().convert(10, startCurrency: dollar, targetCurrency: euro)
let euroToDollar = MoneyConverter().convert(100, startCurrency: euro, targetCurrency: dollar)
let euroToSit = MoneyConverter().convert(1, startCurrency: euro, targetCurrency: sit)