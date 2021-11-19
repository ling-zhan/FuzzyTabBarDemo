//
//  DataSource.swift
//  FuzzyTabBarDemo
//
//  Created by Ling on 2021/11/18.
//

import SwiftUI
import FuzzyTabBar

let itemData:[TabBarItem]  = [
    TabBarItem(icon: "airplane", foregroundColor: Color("TextColor"), title: "title1", tag: 0, isBadge: false),
    TabBarItem(icon: "car.fill", foregroundColor: Color("TextColor"), title: "title2", tag: 1, isBadge: true),
    TabBarItem(icon: "ferry.fill", foregroundColor: Color("TextColor"), title: "title3", tag: 2, isBadge: true),
]
let itemData1:[TabBarItem]  = [
    TabBarItem(icon: "airplane", foregroundColor: Color("TextColor"), tag: 0, isBadge: false),
    TabBarItem(icon: "car.fill", foregroundColor: Color("TextColor"), tag: 1, isBadge: true),
    TabBarItem(icon: "ferry.fill", foregroundColor: Color("TextColor"), tag: 2, isBadge: true),
]

let cardData: [Card] = [
    Card(imageName: "image1", price: "500"),
    Card(imageName: "image3", price: "400"),
    Card(imageName: "image4", price: "550"),
    Card(imageName: "image2", price: "480"),
    Card(imageName: "image4", price: "230"),
    Card(imageName: "image1", price: "500"),
    Card(imageName: "image2", price: "480"),
    Card(imageName: "image3", price: "400"),
    Card(imageName: "image4", price: "230"),
]

struct Card: Hashable {
    let id = UUID()
    let imageName: String
    let price: String
}
