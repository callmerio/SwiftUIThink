//
//  IfLetGuardBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/13.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var userID: String? = "test111"
    @State var displayText: String? = nil
    @State var isLoading: Bool = true

    var body: some View {
        NavigationView {
            VStack {
                Text("Here wer are parctincing safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                Spacer()
            }
            .navigationTitle("Safe Code")
            .onAppear {
//                loadData()
                loadDataGuard()
            }
        }
    }

    func loadData() {
        if let curentUserID = userID {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "Loaded data for user: \(curentUserID)"
                isLoading = false
            }
        }
    }
    
    func loadDataGuard(){
        
        guard let curentUserID = userID  else{
            displayText = " error here is no user id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            displayText = "Loaded da=ta for user: \(curentUserID)"
            isLoading = false
        })
    }
}

#Preview {
    IfLetGuardBootcamp()
}
