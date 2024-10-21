//
//  MenuView.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/22/24.
//

import SwiftUI

struct MenuView: View {
    let week: [LunchItem]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(week.indices, id: \.self) { index in
                    CardView(lunchItem: week[index])
                        .frame(height: 300)
                        .padding(.vertical, 10)
                }
            }
        }
    }
}

#Preview {
    MenuView(week: [
        .init(
            day: "Monday",
            meal: .init(
                name: "Chicken and Waffles",
                imageName: "chicken-and-waffles"
            )
        ),
        .init(
            day: "Tuesday",
            meal: .init(
                name: "Tacos",
                imageName: "tacos"
            )
        )
    ])
}
