//
//  DetailsViewController.swift
//  3rdAppsLesson
//
//  Created by user on 14/12/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var chatImageView: UIImageView!
    
    
    @IBOutlet weak var chatNameLabel: UILabel!

    
    @IBOutlet weak var chatMessageLabel: UILabel!
    
    var image = UIImage()
    var chatName = ""
    var chatMsg = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatImageView.image = image
        chatNameLabel.text = chatName
        chatMessageLabel.text = chatMsg

        // Do any additional setup after loading the view.
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
