//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//fibonacijevo število iterativno izračunamo na naslednji način:
//F0=1
//F1=1
//F2=F0+F1
//F3=F1+F2
//splošno F(n) = F(n-1) + F(n-2)

//iteratina funkcija
func fibonacci_iter (iteracija : Int) ->Int
{
var F0 = 1
var F1 = 1

    
for _ in 0..<iteracija
    {
    let temp = F0
    F0=F1
    F1=temp + F1
    }
return F0
}

fibonacci_iter(20)

//fibonaccijevo stevilo rekurzivno izracunamo na naslednji nacin


func fibonacci_recur(Fn: Int) -> Int{
    if((Fn == 0) || (Fn == 1)){
        return 1;
    }
    return fibonacci_recur(Fn - 1) + fibonacci_recur(Fn - 2);
}

fibonacci_recur(20)
