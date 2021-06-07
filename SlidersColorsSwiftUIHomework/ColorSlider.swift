//
//  ColorSlider.swift
//  SlidersColorsSwiftUIHomework
//
//  Created by Илья Тюрин on 07.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 40)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .padding()
                .frame(height: 30)
                .accentColor(color)
            NumericTextField(value: $sliderValue)
                .frame(width: 80)
        }
        .padding(.horizontal, 16)
    }
}

struct NumericTextField: View {
    @Binding var value: Double
    
    private let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 0
        return formatter
    }()
    
    var body: some View {
        VStack {
            TextField("", value: $value, formatter: formatter)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
    
}
