//
//  ChangedColorView.swift
//  SlidersColorsSwiftUIHomework
//
//  Created by Илья Тюрин on 07.06.2021.
//

import SwiftUI

struct ChangedColorView: View {
    let r: Double
    let g: Double
    let b: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.init(red: r/255, green: g/255, blue: b/255))
            .frame(width: 300, height: 150)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
    }
}
