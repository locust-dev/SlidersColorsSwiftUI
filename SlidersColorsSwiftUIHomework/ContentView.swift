//
//  ContentView.swift
//  SlidersColorsSwiftUIHomework
//
//  Created by Илья Тюрин on 06.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)

    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                ChangedColorView(r: redSlider, g: greenSlider, b: blueSlider)
                ColorSlider(sliderValue: $redSlider, color: .red)
                ColorSlider(sliderValue: $greenSlider, color: .green)
                ColorSlider(sliderValue: $blueSlider, color: .blue)
                Spacer()
            }
            .padding(.top, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
