//
//  Contact.swift
//  Contacs by Ikbal
//
//  Created by Ikbal Demirdoven on 2023-05-25.
//

import Foundation
import CoreData

final class Contact : NSManagedObject
{
    @NSManaged var dob : Date
    @NSManaged var email : String
    @NSManaged var favorite : Bool
    @NSManaged var name : String
    @NSManaged var notes : String
    @NSManaged var number : String
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        setPrimitiveValue(Date.now, forKey: "dob")
        setPrimitiveValue(false, forKey: "favorite")
    }
}
