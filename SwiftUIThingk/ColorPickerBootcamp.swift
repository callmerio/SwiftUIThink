//
//  ColorPickerBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/12.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor : Color = .orange
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(edges: .all)
            
            ColorPicker("Select Color", selection: $backgroundColor, supportsOpacity: true)
                .padding(20)
                .background(.black)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(20)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
