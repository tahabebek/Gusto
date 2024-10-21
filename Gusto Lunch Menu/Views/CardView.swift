//
//  Card.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/22/24.
//

import SwiftUI

struct CardView: View {
    let lunchItem: LunchItem
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image(lunchItem.meal.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                VStack {
                    Spacer()
                    Text(lunchItem.day)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Text(lunchItem.meal.name)
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                        .shadow(radius: 5)
                }
                .padding()
                .frame(width: geometry.size.width)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.7), Color.clear]), startPoint: .bottom, endPoint: .top)
                )
            }
        }
        .cornerRadius(15)
    }
}

#Preview {
    CardView(
        lunchItem:
                .init(
                    day: "Monday",
                    meal: .init(
                        name: "Chicken and Waffles",
                        imageName: "chicken-and-waffles"
                    )
                )
    )
}
