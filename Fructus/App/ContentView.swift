//
//  ContentView.swift
//  Fructus
//
//  Created by Abdul Maalik on 02/09/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State private var isShowingSettingsSheet: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    } //NAVIGATION LINK
                } //LOOP
            } //LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
            Button(action: {
                isShowingSettingsSheet = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } // BUTTON
                .sheet(isPresented: $isShowingSettingsSheet) {
                    SettingsView()
                }
            )
        } //NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
