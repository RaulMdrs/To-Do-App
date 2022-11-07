//
//  ViewController.swift
//  To Do
//
//  Created by Raul de Medeiros on 06/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let keyToDo = "keyToDo"
    @IBOutlet weak var descriptionTask: UITextField!
    @IBOutlet weak var addDescriptionOrNo: UISwitch!
    @IBOutlet weak var taskTitleText: UITextField!
    @IBOutlet weak var segmentedUrgentOrNot: UISegmentedControl!
    
    @IBOutlet weak var TasksToDo: UITableView!
    var tasks : [TaskDefinition] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TasksToDo.delegate = self
        TasksToDo.dataSource = self
        
        resetTaskConfig()
        updateTaskList()
       // tasks = UserDefaults.standard.object(forKey: keyToDo) as? [TaskDefinition] ?? []
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TaskToDoCell
        cell.config(task: tasks[indexPath.row])
        
       // UserDefaults.standard.set(tasks, forKey: keyToDo)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tasks.remove(at: indexPath.row)
        updateTaskList()
    }
    
    @IBAction func AddTaskButtonPressed(_ sender: Any) {
        if !taskTitleText.text!.isEmpty{
            tasks.append(TaskDefinition(taskTittle: taskTitleText.text!, taskPriotity: segmentedUrgentOrNot.selectedSegmentIndex, descriptionTask.text!))
          resetTaskConfig()
            updateTaskList()
        }
    }
    
    @IBAction func AddOrNoDescription(_ sender: UISwitch) {
        descriptionTask.isEnabled = !descriptionTask.isEnabled
        
        if descriptionTask.isEnabled == false{
            descriptionTask.backgroundColor = .lightGray
        }else{
            descriptionTask.backgroundColor = .white
        }
    }
    
    func updateTaskList(){
        TasksToDo.reloadData()
    }
    
    func resetTaskConfig()
    {
        taskTitleText.text = ""
        descriptionTask.text = ""
        segmentedUrgentOrNot.selectedSegmentIndex = 1
    }
}

