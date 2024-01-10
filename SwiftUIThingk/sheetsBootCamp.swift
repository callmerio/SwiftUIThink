//
//  sheetsBootCamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/10.
//

import SwiftUI

struct sheetsBootCamp: View {
    @State var showSheet : Bool = true
    var body: some View {
        ZStack{
        Color.green
                .ignoresSafeArea(edges: .all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(.green)
                    .font(.title)
                    .padding(20)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View{
    @State var showSheet : Bool = true
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        ZStack(){
            ZStack(alignment: .center){
                Color.orange
                    .ignoresSafeArea(edges: .all)
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .foregroundStyle(.green)
                        .font(.title)
                        .padding(20)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                .sheet(isPresented: $showSheet, content: {
                    ThirdScreen()
                })
                
                
                    VStack(alignment: .leading){
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(.black)
                                .font(.title)
                                .padding(20)
                        })
                        Spacer()
                    }
                
            }
        }
    }
}

struct ThirdScreen: View{
    @Environment(\.dismiss) var dismiss
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.yellow
                .ignoresSafeArea(edges: .all)
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.black)
                    .font(.title)
                    .padding(20)
            })
        }
    }
}

#Preview {
    sheetsBootCamp()
//    SecondScreen()
}
