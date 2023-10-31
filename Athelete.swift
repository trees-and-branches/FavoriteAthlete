//
//  Athelete.swift
//  FavoriteAthlete
//
//  Created by shark boy on 10/31/23.
//

import Foundation

struct Athlete {
    let name: String
    let team: String?
    let sport: String
    let controversy: String?
    var age: Int

    var description: String {
        var descriptionString = "\(name) is a \(age)-year-old \(sport) athlete"
        
        if let team = team {
            descriptionString += " who plays for \(team)"
        }
        
        if let controversy = controversy {
            descriptionString += " and was involved in the \(controversy) controversy."
        }
        
        return descriptionString
    }
}


//    init(name: String, team: String?, sport: String) {
//        self.name = name
//        self.team = team
//        self.sport = sport
//    }
    
//    var description: String {
//        if let team = team {
//            return "\(name) is a \(team) athlete in \(sport). They were involved in the \(controversy) controversy"
//        } else {
//            return "\(name) is a \(sport) athlete. They were involved in the \(controversy) controversy "
//        }
//    }
