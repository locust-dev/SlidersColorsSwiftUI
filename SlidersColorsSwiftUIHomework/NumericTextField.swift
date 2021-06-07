//
//  SwiftUIView.swift
//  SlidersColorsSwiftUIHomework
//
//  Created by Илья Тюрин on 07.06.2021.
//

import SwiftUI

struct NumericTextField: View {
    @Binding var value: Double
    @State private var title = String()
    @State private var showAlert = false
    
    var body: some View {
        let someValue = Binding<String>(get: { String(lround(value)) }, set: { title = $0 })
        
        return VStack {
            TextField("", text: someValue, onCommit: validation)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Error"), message: Text("Please input only numbers in range 0-255"))
            })
        }
    }
    
    private func validation() {
        if let newValue = Double(title), 0...255 ~= newValue {
            value = newValue
        } else {
            value = 0
            showAlert.toggle()
        }
    }
}
