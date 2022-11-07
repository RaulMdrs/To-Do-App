//
//  TableViewCell.swift
//  To Do
//
//  Created by Raul de Medeiros on 06/11/22.
//

import UIKit

class TaskToDoCell: UITableViewCell {

    @IBOutlet weak var titleTaskLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func config(task : TaskDefinition){
        titleTaskLabel.text = task.taskTittle
        descriptionLabel.text = task.taskDescription
        switch task.taskPriotity{
        case .urgent:
            titleTaskLabel.textColor = .red
        case .notUrgent:
            titleTaskLabel.textColor = .blue
        }
    }
    
    
}
