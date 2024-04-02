//
//  MenuData.swift
//  cafeKiosk
//
//  Created by 문기웅 on 4/2/24.
//

import Foundation

struct MenuData {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

let ameri = MenuData(name: "아메리카노", price: 4500)
let latte = MenuData(name: "카페라떼", price: 5000)
let caramel = MenuData(name: "카라멜마끼아또", price: 5500)
let dolce = MenuData(name: "돌체라떼", price: 5500)


let lemon = MenuData(name: "레몬에이드", price: 5500)
let grapefruit = MenuData(name: "자몽에이드", price: 5500)
let matcha = MenuData(name: "말차라떼", price: 6000)
let mango = MenuData(name: "망고스무디", price: 6000)


let chocoCake = MenuData(name: "초코케이크", price: 5500)
let strawberryCake = MenuData(name: "딸기케이크", price: 5500)
let cheeseCake = MenuData(name: "바스크 치즈케이크", price: 5500)


