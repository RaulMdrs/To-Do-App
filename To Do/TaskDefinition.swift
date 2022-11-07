//
//  TaskDefinition.swift
//  To Do
//
//  Created by Raul de Medeiros on 07/11/22.
//

import Foundation


enum Priority{
    case urgent, notUrgent
}

struct TaskDefinition{
    var taskTittle : String
    var taskDescription : String
    var taskPriotity : Priority
    
    init(taskTittle: String, taskPriotity: Int,_ taskDescription : String) {
        self.taskTittle = taskTittle
        if taskDescription.isEmpty{
            self.taskDescription = "No description"
        }else{
            self.taskDescription = taskDescription
        }
        
        if taskPriotity == 0{
            self.taskPriotity = .urgent
        }else{
            self.taskPriotity = .notUrgent
        }
    }
}
