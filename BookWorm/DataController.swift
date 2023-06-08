//
//  DataController.swift
//  BookWorm
//
//  Created by Theós on 08/06/2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init () {
        container.loadPersistentStores { description, error in
            if let error {
                print("Core Data failed to load because: \(error.localizedDescription)")
            }
        }
    }
}
