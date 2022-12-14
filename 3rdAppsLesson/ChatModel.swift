//
//  ChatModel.swift
//  3rdAppsLesson
//
//  Created by user on 14/12/22.
//

import UIKit
import Foundation

struct Chat {
    var image: UIImage
    var name: String
    var lastMessage: String
    
}

var chats = [
    Chat(image: UIImage(systemName: "person.circle.fill")!, name: "Abai", lastMessage: "Hello!!"), Chat(image: UIImage(systemName: "person.circle.fill")!, name: "Atai", lastMessage: "Salam"), Chat(image: UIImage(systemName: "person.circle.fill")!, name: "Bakai", lastMessage: "Let's go to volleyball"), Chat(image: UIImage(systemName: "person.circle.fill")!, name: "Nursultan", lastMessage: "Where'are your homeworks?"), Chat(image: UIImage(systemName: "person.circle.fill")!, name: "Dad", lastMessage: "Buy ice cream for me"), Chat(image: UIImage(systemName: "person.circle.fill")!, name: "Mom", lastMessage: "Buy 1 milk, 3kg rice and rye bread")
]
