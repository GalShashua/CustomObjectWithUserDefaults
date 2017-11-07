//: Playground - noun: a place where people can play

import UIKit

struct User: Codable {
    var id: String
    var name: String
    var age: Int
}

let user = User(id: "abc123", name: "Tim can Cook", age: 13)

let kUser = "kUser"

if let encoded = try? JSONEncoder().encode(user) {
    UserDefaults.standard.set(encoded, forKey: "kUser")
}

if let userData = UserDefaults.standard.data(forKey: "kUser"),
    let user = try? JSONDecoder().decode(User.self, from: userData) {

    dump(user)
}

