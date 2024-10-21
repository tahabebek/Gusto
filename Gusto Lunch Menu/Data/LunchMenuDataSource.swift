//
//  LunchMenuDataSource.swift
//  Gusto Lunch Menu
//
//  Created by GustoBot on 6/14/22.
//

import Foundation

class LunchMenuDataSource {
    func getLunchMenu() async -> Menu {
        try! await Task.sleep(for: .seconds(1))
        return Menu.mockData
    }
}
