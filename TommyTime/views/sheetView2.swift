//
//  sheetView2.swift
//  Champions
//
//  Created by Shakira Al-Jahmee on 10/10/24.
//

import SwiftUI

struct SheetView2: View {
    
    @State private var currentDate = Date()
   
    let tasks: [String] = taskList
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
        NavigationView {
            List {
                ForEach(tasks, id: \.self) { task in
                    NavigationLink(destination: SheetView3()) { // Always goes to the same Sheet3
                            Text(task)
                }
            }
                .padding()
                
        }
            .navigationTitle("Task List")
    
            .toolbar {
                ToolbarItem {
                   HStack {
                       DatePicker("", selection: $currentDate, displayedComponents: .date)
                          // .datePickerStyle(.wheel)
                           .padding(.trailing, 67)
                       
                       Button("Done") {
                           
                           dismiss()
                             
                       }
                    }
                   
                }
            }
            List {
                ForEach(tasks, id: \.self) { task in
                    NavigationLink(destination: SheetView3()) { // Always goes to the same Sheet3
                        Text(task)
                    }
                }
            }
        }
    }
}

#Preview {
    SheetView2()
}

