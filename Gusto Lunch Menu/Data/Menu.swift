//
//  Menu.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/21/24.
//

struct Menu {
    private let items: [[MenuItem]]
    
    subscript (week: Int) -> [MenuItem] {
        items[week % 2]
    }
    
    static let mockData: Menu = .init(items: [
        [
            .init(name: "Chicken and Waffles", imageName: "chicken-and-waffles"),
            .init(name: "Tacos", imageName: "tacos"),
            .init(name: "Curry", imageName: "curry"),
            .init(name: "Pizza", imageName: "pizza"),
            .init(name: "Sushi", imageName: "sushi")
        ],
        [
            .init(name: "Breakfast for lunch", imageName: "breakfast"),
            .init(name: "Hamburgers", imageName: "hamburger"),
            .init(name: "Spaghetti", imageName: "spaghetti"),
            .init(name: "Salmon", imageName: "salmon"),
            .init(name: "Sandwiches", imageName: "sandwich")
        ]
    ])
}
