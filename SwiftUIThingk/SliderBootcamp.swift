//
//  SliderBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/12.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    var body: some View {
        VStack {
//            Text("\(sliderValue)")
            Text(
                String(format: "%.1f", sliderValue)
            )
//        Slider(value: $sliderValue,in: 0...100)
//            Slider(value: $sliderValue, in: 0 ... 5, step: 0.1)
            Slider(
                value: $sliderValue, 
                in: 1 ... 10,
                step: 0.1,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("10"),
                label: { Text("Slider") }
            )
            .tint(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
