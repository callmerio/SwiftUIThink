//
//  ToggleBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/11.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn : Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status")
            }
            
            Toggle(isOn: $toggleIsOn, label: {
                Text("Toggle")
                
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }
        .padding(20)
    }
}

#Preview {
    ToggleBootcamp()
}
