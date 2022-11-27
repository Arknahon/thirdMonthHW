//
//  ViewController.swift
//  3rdAppsLesson
//
//  Created by user on 27/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactsTableView: UITableView!
    
    var a : [String] = ["Atai", "Aibek"]
    
    var b: [String] = ["Bakai", "Bayel"]
    
    var e: [String] = ["Eldar", "Emil"]
    
    var f: [String] = ["Farhad", "Fernand"]
    
    var m: [String] = ["Milana", "Musa"]
    
    var n: [String] = ["Nurik", "Niggan"]
    
    var test: [String] = ["Atai", "Aibek", "Bakai", "Bayel", "Eldar", "Emil", "Farhad", "Fernand", "Milana", "Musa", "Nurik", "Niggan"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "contact_cell")
    }


}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return a.count
        case 1:
            return b.count
        case 2:
            return e.count
        case 3:
            return f.count
        case 4:
            return m.count
        case 5:
            return n.count
        default:
            return 0
        }

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact_cell", for: indexPath)
//        cell.textLabel?.text = contacts[indexPath.row]
        cell.textLabel?.text = test[indexPath.section]
        cell.textLabel?.textColor = .purple
        cell.backgroundColor = .cyan
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "a"
        case 1:
            return "b"
        case 2:
            return "e"
        case 3:
            return "f"
        case 4:
            return "m"
        case 5:
            return "n"
        default:
            return ""
        }
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
