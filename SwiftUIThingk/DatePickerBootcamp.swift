//
//  DatePickerBootcamp.swift
//  SwiftUIThingk
//
//  Created by riozron on 2024/1/12.
//  有多个不同的UI

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate : Date = Date()
    
    let startDate : Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    
    let endDate : Date = Date()
    
    var body: some View {
        VStack {
            Text("Select Date")
            Text(selectedDate.formatted(date: .numeric, time: .standard))
            DatePicker("Select Date", selection: $selectedDate, in: startDate...endDate, displayedComponents: [.hourAndMinute,.date])
                .accentColor(.red)
                .tint(.orange)
            .datePickerStyle(.compact)
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
