//
//  ContentView.swift
//  FuzzyTabBarDemo
//
//  Created by Ling on 2021/11/18.
//

import SwiftUI
import FuzzyTabBar

struct ContentView: View {
    @State var cards: [Card] = cardData
    @State var tabBarItems: [TabBarItem] = itemData
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    // Content
                    ScrollView(showsIndicators: false) {
                        ForEach(cards, id: \.self) { card in
                            ZStack {
                                Image(card.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.width * 0.7)
                                    .cornerRadius(12)
                                Text("$ \(card.price)")
                                    .font(.title)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity ,alignment: .bottomTrailing)
                                    .foregroundColor(.white)
                                    .padding(30)
                            }
                        }
                    }
                }
                
                // Tab bar
                VStack {
                    Spacer()
                    FuzzyTabBar(action: { selectedTag in
                        // handle selected action
                        tabBarItems[selectedTag].isBadge = false
                    }, tabbarItems: $tabBarItems, selectedBarColor: .purple)
                }.edgesIgnoringSafeArea(.bottom)
            }
            .navigationTitle("Demo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
