//
//  popoverBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/10.

//  transation aminmate sheets

import SwiftUI

struct popoverBootcamp: View {
    @State var showNewScreen : Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(edges: .all)
            VStack{
                Button("Button"){
                    withAnimation(.spring, {
                    showNewScreen.toggle()
                    })
                    
                }.font(.largeTitle)
                Spacer()
            }
            // Method 1 sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            // Method 2 transition
//            ZStack{
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .transition(.move(edge: .bottom))
//                }
//            }
//            .zIndex(2.0)
            
            NewScreen(showNewScreen: $showNewScreen)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen : Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .ignoresSafeArea(edges: .bottom)
            Button(action: {
                withAnimation(.spring, {
                    showNewScreen.toggle()
                })
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    popoverBootcamp()
//    NewScreen()
}
