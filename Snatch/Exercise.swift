//
//  Exercise.swift
//  Snatch
//
//  Created by Perceval Park on 6/16/24.
//

import Foundation

struct Exercise: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var type: String
    var imageName: String
    var starred: Bool
    var description: String
    
}
