//
//  FoodDetails.swift
//  SwiftUI-FoodList
//
//  Created by Arie May Wibowo on 28/06/20.
//

import SwiftUI

struct FoodDetails: View {
    var food: Foods
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(food.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            
            if food.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(food.name)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct FoodDetails_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                FoodDetails(food: testData[0])
            }
            NavigationView {
                FoodDetails(food: testData[1])
            }
        }
        
    }
}
