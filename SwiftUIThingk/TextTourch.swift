//
//  TextTourch.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/6.
//

import SwiftUI


struct TextTourch: View {
    let Red = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.body)
//            .foregroundColor(Color(Red))
            .foregroundColor(Color(UIColor.secondarySystemBackground))
            .strikethrough(false, color: Color.red)
            
        Capsule()
            .trim(from: 0.1, to: 1)
            .fill(Color(#colorLiteral(red: 0.1371486485, green: 0.3222167492, blue: 0.1810729802, alpha: 1)))
            .shadow(radius: 20)
            .frame(width: 200, height: 100)
    
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing))
            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .bottomLeading, startRadius: 5, endRadius: 200))
            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
            AngularGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            )
            .frame(width: 200, height: 100)
        
        Image(systemName: "heart.fill")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .foregroundColor(.red)
            .frame(width: 200, height: 200 )
    }
}

#Preview {
    TextTourch()
}
