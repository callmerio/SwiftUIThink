//
//  OnAppearBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/13.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText : String = "Hello"
    @State var count : Int = 0
    
    var body: some View {
        NavigationStack{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){_ in
                        RoundedRectangle(cornerRadius:  20)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                // 异步
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is new on Appear"
                }
            })
            .onDisappear(perform: {
                myText = "disappear"
            })
        .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
