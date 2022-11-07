//
//  ConfigTasks.swift
//  To Do
//
//  Created by Raul de Medeiros on 06/11/22.
//

import UIKit

class ConfigTasksViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func AddButtonPressed(_ sender: UIButton) {
        let parent = self.presentingViewController as? ViewController
       // parent?.tasks.append(<#T##newElement: TaskDefinition##TaskDefinition#>)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
