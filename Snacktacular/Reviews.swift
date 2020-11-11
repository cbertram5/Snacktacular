//
//  Reviews.swift
//  Snacktacular
//
//  Created by Chris Bertram on 11/10/20.
//

import Foundation
import Firebase

class Reviews {
    var reviewArray: [Review] = []
    
    var db: Firestore!
    
    init() {
        db = Firestore.firestore()
    }
}
