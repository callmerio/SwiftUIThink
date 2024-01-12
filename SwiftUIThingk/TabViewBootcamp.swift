//
//  TabViewBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/12.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("BROWSE TAB")
                .tabItem { Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
                .tag(1)
            Text("PROFILE TAB")
                .tabItem { Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.brown)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    @Binding var selectedTab : Int
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()

            VStack {
                Text("Home Tab")
                    .font(.title)

                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Button")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
        }
    }
}
