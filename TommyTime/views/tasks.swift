//
//  tasks.swift
//  Champions
//
//  Created by Shakira Al-Jahmee on 10/9/24.
//

import Foundation
import Observation




// Task model
struct TaskModel {
    var title: String
    var description: String
    var date: Date
    var location: String
}

@Observable class TaskManager {
    
    var taskLists:[TaskModel] = [
      //  TaskModel(title: <#T##String#>, description: <#T##String#>, date: <#T##Date#>, location: <#T##String#>)
    ]
    
    func addTask(task: TaskModel) {
        taskLists.append(task)
    }
    
}


    
import Foundation

    let taskList = [
        "Meeting with Champions",
        "Dinner with Becky",
        "Gym",
        "Go to Cafe",
        "Grocery Shopping",
        "Pay Electric",
        "Complete Project Report",
        "Walk the Dog",
        "Doctors appointment",
        "Water the Plants",
        "Follow up",
        "Interview",
        "Networking",
        "Task Fourteen",
        "Task Fifteen",
        "Task Sixteen",
        "Task Seventeen",
        "Task Eighteen",
        "Task Nineteen",
        "Task Twenty",
    ]

