//
//  PickerBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/11.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "1"
    let filterOptions : [String] = [
    "Most Recent", "Populer", "Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.orange
        
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker(
            selection: $selection,
            content: {
                ForEach(1..<100){number in
                    Text("\(number)")
                }
                },
            label: {
                Text("Picker")
            })
        .pickerStyle(.wheel)
        
       Picker("Picker", selection: $selection, content: {
           ForEach(filterOptions.indices, id: \.self) { index in
               Text(filterOptions[index]).tag(filterOptions[index])
           }
       })
           .pickerStyle(.segmented)
    }
}

#Preview {
    PickerBootcamp()
}
