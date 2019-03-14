//
//  ViewController.swift
//  StructClassProject
//
//  Created by Digital-02 on 3/11/19.
//  Copyright © 2019 Digital-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  //      myStudentList.append(Student(name: "Mad"))
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        self.addMyStudens()
    }

 //   let XY = Location(x: 10, y:20)

    var myStudentList: [Student] = []
   // myStudentLisy.append(student2)


    func addMyStudens(){
    let student1 = Student(name: "amal")
    let student2 = Student(name: "kasun")
    let student3 = Student(name: "nimak")
    let student4 = Student(name: "hiran")
       
    self.myStudentList = [student1,student2,student3,student4]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myStudentList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        cell.studentName.text = self.myStudentList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         self.tableView.deselectRow(at: indexPath, animated: true)
        // self.performSegue(withIdentifier: "showProfile", sender: nil
    }
}


