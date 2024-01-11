//
//  NavigationViewBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/11.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                NavigationLink("Second One"){MyOtherScreen()}
                ForEach(0..<10) { _ in
                    Text("Hello, World")
                }
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)
        }
    }
}

struct MyOtherScreen: View {
    var body: some View{
        ZStack {
            Color.green
        }
        .ignoresSafeArea(edges: .all)
        .navigationTitle("Green Screen")
    }
}

#Preview {
    NavigationViewBootcamp()
}
