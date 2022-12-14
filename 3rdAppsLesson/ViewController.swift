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
//        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "contact_cell")
    }


}

extension ViewController: UITableViewDataSource{
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        print(chats.count)
//        return chats.count
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section{
//        case 0:
//            return a.count
//        case 1:
//            return b.count
//        case 2:
//            return e.count
//        case 3:
//            return f.count
//        case 4:
//            return m.count
//        case 5:
//            return n.count
//        default:
//            return 0
//        }
        
        return chats.count


    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chat_cell", for: indexPath) as! ChatTableViewCell
//        cell.textLabel?.text = contacts[indexPath.row]
        cell.chatImageView.image = chats[indexPath.row].image
        cell.chatNameLabel.text = chats[indexPath.row].name
        cell.chatMessageLabel.text = chats[indexPath.row].lastMessage
        cell.backgroundColor = .cyan
        return cell
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section{

}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailedVC = storyboard?.instantiateViewController(withIdentifier: "detail_vc") as! DetailsViewController
        
        detailedVC.image = chats[indexPath.row].image
        detailedVC.chatName =  chats[indexPath.row].name
        print(detailedVC.chatName)
        detailedVC.chatMsg =  chats[indexPath.row].lastMessage
        
    
        navigationController?.pushViewController(detailedVC, animated: true)
    }
}
