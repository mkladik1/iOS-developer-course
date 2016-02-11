//: Playground - noun: a place where people can play

import UIKit
import Foundation;

//var str = "Hello, playground"

class toDoTask
{
    var taskName: String = ""
    var dateAdd: NSDate?
    var dateChange: NSDate?
    var stateStr: String = ""
    enum state: String
        {
        case NotDone = "Not done"
        , Done = "Done"
        }
    
    var desc : String
        {
        return "Description"
        }
    
    init(taskName: String)
        {
        self.taskName = taskName
        self.stateStr = state.NotDone.rawValue
        }
}


let task1 = toDoTask(taskName: "check backup")
task1.taskName
task1.desc
task1.stateStr

let task2 = toDoTask(taskName: "migrate database")
task2.taskName
task2.stateStr = toDoTask.state.Done.rawValue
task2.stateStr