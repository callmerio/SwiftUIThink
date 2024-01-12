//
//  PageTabViewBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/12.
//

import SwiftUI

struct PageTabViewBootcamp: View {
    
    @State var selectedTab : Int = 0
    
    var body: some View {
        TabView{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.red)
            RoundedRectangle(cornerRadius: 25)
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.orange)
        }
        .frame(height:300)
        .tabViewStyle(PageTabViewStyle())
        
    }
}

#Preview {
    PageTabViewBootcamp()
}
