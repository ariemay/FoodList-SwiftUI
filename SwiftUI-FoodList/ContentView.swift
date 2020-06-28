//
//  ContentView.swift
//  SwiftUI-FoodList
//
//  Created by Arie May Wibowo on 28/06/20.
//

import SwiftUI

struct ContentView: View {
    var foods: [Foods] = []
    var body: some View {
        NavigationView {
            List {
                ForEach(foods){ food in
                    FoodContainerCell(food: food)
                }
                HStack {
                    Spacer()
                    Text("\(foods.count) foods available")
                        .foregroundColor(.secondary)
                        .navigationTitle("Foods")
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(foods: testData)
    }
}

struct FoodContainerCell: View {
    var food: Foods
    
    var body: some View {
        NavigationLink(destination: FoodDetails(food: food)) {
            Image(food.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .cornerRadius(10)
            VStack (alignment: .leading) {
                Text(food.name)
                Text("Pedas")
            }.padding()
        }
    }
}
