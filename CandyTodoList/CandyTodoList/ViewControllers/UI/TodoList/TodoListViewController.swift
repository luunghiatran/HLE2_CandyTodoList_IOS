//
//  TodoListViewController.swift
//  CandyTodoList
//
//  Created by NghiaTL on 5/29/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit
import EachNavigationBar

class TodoListViewController: UIViewController {
    
    @IBOutlet weak var todoTableView: UITableView!
    
    let todoList: [Todo] = [
        Todo(checked: false, text: "Nghia"),
        Todo(checked: false, text: "Nghia"),
        Todo(checked: false, text: "Nghia"),
        Todo(checked: false, text: "Nghia"),
        Todo(checked: false, text: "Nghia")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

}

extension TodoListViewController {
    func setupView() {
        AppHelper.configHomeNavigationBar(viewController: self, title: "TO-DO")
        setupTableView()
    }
    
    func setupTableView() {
        let cell = UINib(nibName: "TodoTableViewCell", bundle: nil)
        todoTableView.register(cell, forCellReuseIdentifier: "cell")
        todoTableView.dataSource = self
        todoTableView.delegate = self
    }
}

extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todoCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TodoTableViewCell
        
        let todo = todoList[indexPath.item]
        todoCell?.todoLabel?.text = todo.text
        
        return todoCell!
    }
}
