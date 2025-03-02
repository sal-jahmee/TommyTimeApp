//
//  sheetView3.swift
//  Champions
//
//  Created by Shakira Al-Jahmee on 10/8/24.
//

import SwiftUI

// Task model
struct Task {
    var title: String
    var description: String
    var date: Date
    var location: String
}

struct SheetView3: View {
  //  var task: Task //object
    
    var body: some View {
        
        
        
        VStack(alignment: .leading){
            
            Text("Title: Meeting with Champions")
                .padding(.top)
            
            Text("Description: Discussing why the chicken crossed the road.")
                .padding(.top)
            
            Text("Date: 14/10/2024")
                .padding(.top)
            
            Text("Location: Bikini Bottom")
                .padding(.top)
        }
//        VStack {
//            Text("This is your notes.")
//                .padding()
//            
//            Text("Title: \(task.title)")
//                .padding(.top)
//            
//            Text("Description: \(task.description)")
//                .padding(.top)
//            
//            Text("Date: \(task.date, formatter: DateFormatter.taskDateFormatter)")
//                .padding(.top)
//            
//            Text("Location: \(task.location)")
//                .padding(.top)
//        }
        .padding()
    }
}

struct SheetView3_Previews: PreviewProvider {
    static var previews: some View {
      // let sampleTask = Task(title: "Sample Task", description: "This is a sample task description.", date: Date(), location: "Sample Location")
        SheetView3()
    }
}

// Date formatter extension
extension DateFormatter {
    static var taskDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
}
