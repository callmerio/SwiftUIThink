//
//  AnimationTimingBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/10.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    @State private var scale: CGFloat = 1.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 250: 50 , height: 100)
                .animation(.spring(response: 1.2, dampingFraction: 0.4, blendDuration: 1.0),value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50 , height: 100)
//                .animation(.easeIn,value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50 , height: 100)
//                .animation(.easeOut,value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50 , height: 100)
//                .animation(.easeInOut,value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
