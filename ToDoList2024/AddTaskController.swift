//
//  ViewController.swift
//  ToDoList2024
//
//  Created by Lê Hưng on 20/5/24.
//

import UIKit

class AddTaskController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    // MARK: Propertties
    @IBOutlet weak var titleTodo: UITextField!
    @IBOutlet weak var descriptionTodo: UITextField!
    @IBOutlet weak var timeTodo: UIDatePicker!
    @IBOutlet weak var navigation: UINavigationItem!
    // Dinh nghia bien todo dung de truyen qua lai giua man hinh A va B
    var todo:ToDo?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Thuc hien uy quyen cho doi tuong titleTodo va descriptionTodo
        titleTodo.delegate = self
        descriptionTodo.delegate = self
        
        // Lay todo truyen tu man hinh A(TodoTableViewController) sang
        if let todo = todo {
            titleTodo.text = todo.titleTodo
            descriptionTodo.text = todo.descriptionTodo
            timeTodo.date = todo.timeTodo
            navigation.title = "Update Task"
        }
    }
    
    // MARK: Dinh nghia lai cac ham duoc uy quyen
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // An ban phim
        titleTodo.resignFirstResponder()
        descriptionTodo.resignFirstResponder()
        return true
    }
    
    // MARK: NAVIGATION
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    // Ham tu dong goi moi khi chuyen man hinh voi doi tuong Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let title = titleTodo.text ?? ""
        let description = descriptionTodo.text ?? ""
        todo = ToDo(titleTodo: title, descriptionTodo: description, timeTodo: timeTodo.date)
    }
}

