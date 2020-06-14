//
//  Note + Extensions.swift
//  Mooskine
//
//  Created by Garima Bothra on 26/05/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import CoreData

extension Note {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
