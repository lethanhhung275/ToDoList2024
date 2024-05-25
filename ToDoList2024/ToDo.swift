//
//  ToDo.swift
//  ToDoList2024
//
//  Created by Lê Hưng on 23/5/24.
//

import UIKit

class ToDo {
    // MARK: Properties
    var titleTodo:String
    var descriptionTodo:String
    var timeTodo:Date
    
    init?(titleTodo: String, descriptionTodo: String, timeTodo: Date) {
        if titleTodo.isEmpty  {
            return nil
        }
        if descriptionTodo.isEmpty  {
            return nil
        }
        // Tao duoc doi tuong todo
        self.titleTodo = titleTodo
        self.descriptionTodo = descriptionTodo
        self.timeTodo = timeTodo
    }
}
