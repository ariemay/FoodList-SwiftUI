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
        Image(food.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationTitle(food.name)
            .onTapGesture {
                zoomed.toggle()
            }
            
    }
}

struct FoodDetails_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetails(food: testData[0])
    }
}
