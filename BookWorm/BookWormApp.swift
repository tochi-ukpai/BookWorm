//
//  BookWormApp.swift
//  BookWorm
//
//  Created by Theós on 08/06/2023.
//

import SwiftUI

@main
struct BookWormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            BooksListView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
