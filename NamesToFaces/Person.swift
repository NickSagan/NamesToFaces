//
//  Person.swift
//  NamesToFaces
//
//  Created by Nick Sagan on 02.11.2021.
//

import UIKit

class Person: NSObject, NSCoding {
    
    // to conform NSCoding protocol
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        image = coder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    var name: String
    var image: String
    
    init(name: String, image: String){
        self.name = name
        self.image = image
    }

}
