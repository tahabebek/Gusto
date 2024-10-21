//
//  WeekSelector.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/22/24.
//

import SwiftUI

struct WeekSelector: View {
    @Binding var selectedWeek: Int
    
    var body: some View {
        HStack {
            weekText(0)
            weekText(1)
        }
        .frame(maxWidth: .infinity)
    }
    
    @ViewBuilder private func weekText(_ index: Int) -> some View {
        Text(weekTitle(index))
            .font(.headline)
            .padding()
            .foregroundStyle(selectedWeek == index ? Color.white : .black)
            .background(selectedWeek == index ? Color.blue : Color.clear)
            .cornerRadius(10)
            .onTapGesture {
                withAnimation(.spring()) {
                    selectedWeek = index
                }
            }
    }
    
    private func weekTitle(_ index: Int) -> String {
        index == 0 ? "This Week" : "Next Week"
    }
}

#Preview {
    @Previewable @State var selectedWeek: Int = 0
    WeekSelector(selectedWeek: $selectedWeek)
}
