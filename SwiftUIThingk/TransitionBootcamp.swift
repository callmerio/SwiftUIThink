//
//  TransitionBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/10.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("BUTTON"){
                    withAnimation(.easeInOut, {
                        showView.toggle()
                        
                    })
                }
                Spacer()
            }
        
            if showView{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: UIScreen.main.bounds.height * 0.5)
//                .transition(.move(edge: .bottom))
//                .transition(AnyTransition.move(edge: .bottom))
                .transition(.asymmetric(
                    insertion: .move(edge: .leading),
                    removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
//                .animation(.easeInOut, value: showView)
    }
}

#Preview {
    TransitionBootcamp()
}
